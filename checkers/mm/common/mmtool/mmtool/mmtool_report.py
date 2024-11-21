#!/usr/bin/env python3
from __future__ import annotations

import os, subprocess
from pathlib import Path
import sys
import shutil

from argparse import ArgumentParser
from enum import Enum

class OutputFormat(Enum):
    md = 'MD'
    csv = 'CSV'
    json = 'JSON'

    def __str__(self):
        return self.value

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from typing import Generator
    from collections.abc import Iterable

def get_git_commit_info():
    try:
        # Get the current commit hash
        commit_hash = subprocess.check_output(['git', 'rev-parse', '--short=16', 'HEAD']).strip().decode('utf-8')

        # Get the commit date
        commit_date = subprocess.check_output(['git', 'log', '-1', '--format=%cd', '--date=iso-local'], env={'TZ': 'UTC0'}).strip().decode('utf-8')

        return commit_hash, commit_date

    except subprocess.CalledProcessError as e:
        print(f"Error while executing Git command: {e}")
        return None, None
    except FileNotFoundError:
        print("Git is not installed or not found in the system path.")
        return None, None

class Statistics:
    """Extracting metrics from the output of processes and formatting them
    the metrics are assumed to be found in program output as fragments of the form
    pattern: value
    """
    def __init__(self, tracked_stats: dict[str, str] | None = None) -> None:
        """tracked_stats should map patterns to look up for to corresponding column labels"""
        self.tracked_stats: dict[str, str] = tracked_stats or {}
        self.rev_tracked_stats: dict[str, str] = {v: k for k,v in self.tracked_stats.items()}

    def register_metric(self, pattern: str, label: str) -> None:
        """registers a pattern to look up for in the program output to a corresponding column label"""
        self.tracked_stats[pattern] = label
        self.rev_tracked_stats[label] = pattern

    def set_excludes(self, excluded: Iterable[str]):
        """Excludes given column labels from the statistics
        Raises ValueError if an invalid metric is specified
        """
        for metric in excluded:
            if not self.exclude_metric(metric):
                raise ValueError(f'Invalid metric {metric}. Available ones: {list(self.rev_tracked_stats.keys())}')

    def exclude_metric(self, metric: str) -> bool:
        if metric not in self.rev_tracked_stats:
            return False
        key = self.rev_tracked_stats[metric]
        self.tracked_stats.pop(key)
        return True

    def set_includes(self, includes: Iterable[str]):
        """Specifies which column labels should be included in the statistics
        Raises ValueError if an invalid metric is specified
        """
        newstats = {}
        for metric in includes:
            if metric in self.rev_tracked_stats:
                key = self.rev_tracked_stats[metric]
                newstats[key] = metric
            else:
                raise ValueError(f'Invalid metric {metric}. Available ones: {list(self.rev_tracked_stats.keys())}')
        self.tracked_stats = newstats

    def md_header(self) -> str:
        """Header for markdown output"""
        out = self.header(' | ') + \
            '\n|-|' + '-|'*len(self.tracked_stats)
        return out

    def header(self, separator: str = ', ') -> str:
        """Header for any CSV-like output"""
        return separator.join(self.tracked_stats.values())

    def format_separated_stats(self, stats: dict[str, str], separator = ', ') -> str:
        """CSV-like output"""
        return separator.join(str(stats.get(k)) for k in self.tracked_stats.keys())

    def labeled_items(self, stats: dict[str, str]) -> Generator[tuple[str, str|None], None, None]:
        for pattern,label in self.tracked_stats.items():
            yield label, stats.get(pattern)

    def format_stats(self, stats: dict[str, str]) -> str:
        """JSON-like output"""
        out = ''
        for pattern,label in self.tracked_stats.items():
            out += f'  {label}: {stats.get(pattern)}\n'
        return out

    def update_stats(self, stats: dict[str, str], stdout: str) -> None:
        """Updates the stats dictionary with values for patterns detected in a given string"""
        for out in stdout.split('\n'):
            stat_pair = out.split(': ')
            if len(stat_pair) >= 2:
                stats[stat_pair[-2]] = stat_pair[-1]

    def run_and_update_stats(self, stats: dict[str, str], cmd: list[str], env = None, cwd: str | None = None, timeout: float | None = None) -> None:
        """Runs a program with given cmd and environment, then updates the stats"""
        stdout = subprocess.check_output(cmd, text=True, env=env, start_new_session=True, cwd=cwd, timeout=timeout, stderr=subprocess.STDOUT)
        # ^ If timeout expires, will raise a TimeoutExpired exception;
        #   If returns non-zero status code, will raise a CalledProcessError.
        # Both are to be handled by caller.
        self.update_stats(stats, stdout)

    def is_enabled(self, pattern: str) -> bool:
        """Checks whether a certain pattern was enabled for metrics collection"""
        return pattern in self.tracked_stats

    def get_from_label(self, stats: dict[str, str], label: str) -> str:
        return stats[self.rev_tracked_stats[label]]


class MMToolReport:
    def __init__(self) -> None:
        script_dir: Path = Path(os.path.dirname(os.path.realpath(__file__)))
        self.mm_base_dir: Path = script_dir / '..' / '..' / '..'
        self.repo_root: Path = self.mm_base_dir / '..' / '..'
        exe_base_dir = self.repo_root / '.build' / 'checker' / 'release'
        self.host_exe: Path = exe_base_dir / 'mm-risc0'
        if not self.host_exe.exists():
            print(f'mm-risc0 binary not compiled. Please run `cargo build -r` in {self.mm_base_dir}/mm-risc0', file=sys.stderr)
            sys.exit(1)
        self.mmtool_exe: Path = exe_base_dir / 'mmtool'
        if not self.mmtool_exe.exists():
            print(f'mmtool binary not compiled. Please run `cargo build -r` in {script_dir.parent}', file=sys.stderr)
            sys.exit(1)
        self.common_dir: Path = self.repo_root / 'checker' / 'common'
        self.performance_csv_file: Path = self.common_dir / 'performance_over_time.csv'
        self.baseline_exe: Path|None = None
        self.skip_guest: bool = False
        self.tag_files: bool = False
        self.update_performance: bool = False
        self.guest_with_to_axiom: bool = False
        self.tag_header: str = '$( mmtool stats'
        self.tag_footer: str = 'end mmtool stats $)'
        self.last_prop_pattern: str = 'Last checked proposition'
        self.guest_cycles_pattern: str = 'guest cycles'
        self.guest_to_axiom_cycles_pattern: str = 'guest cycles skipping some proofs'
        self.base_guest_cycles_pattern: str = 'base guest cycles'
        self.delta_guest_cycles_pattern: str = 'delta guest cycles'
        self.output_format : OutputFormat = OutputFormat.md
        self.statistics: Statistics = Statistics({
            'FileName' : 'FileName',
            'Propositions count' : 'Propositions',
            self.last_prop_pattern : 'LastProp',
            'Constants count' : 'Constants',
            'Variables count' : 'Variables',
            'Variable Hypotheses count' : 'VarHyps',
            'Logical Hypotheses count' : 'LogHyp',
            'Disjoint vars pairs count' : 'DsjVarPairs',
            'Proof steps count' : 'ProofSteps',
            'total lemma size' : 'TotalLemmaSize',
            'total claim size' : 'TotalClaimSize',
            'max stack depth' : 'MaxStackDepth',
            'max stack size' : 'MaxStackSize',
            'max cumulated subst size per proof' : 'MaxSubst',
        })

    def main(self):
        argparser = ArgumentParser(
            prog='mmtool report',
            description='Command-line tool for profiling the RiscZero implementation of the metamath checker',
        )
        choice_parser = argparser.add_mutually_exclusive_group()
        choice_parser.add_argument(
            '--dir', type=Path, help='The path of the directory containing files to be checked', default=self.mm_base_dir
        )
        choice_parser.add_argument('--file', type=Path, help='The path of the metamath file to be checked')
        argparser.add_argument(
            '--tag', default=False, action='store_true', help='Tag checked files with the result of the report'
        )
        guest_parser = argparser.add_mutually_exclusive_group()
        guest_parser.add_argument(
            '--skip-guest', default=False, action='store_true', help='Whether to skip running the guest (and computing guest cycles)'
        )
        guest_parser.add_argument('--baseline', type=Path, help='The path of the executable to be used as a baseline')
        guest_parser.add_argument('--guest-with-to-axiom', action='store_true', help='also measure guest cycles when some proofs are converted to axioms'
        )
        axiom_parser = argparser.add_mutually_exclusive_group()
        axiom_parser.add_argument('--to-axiom', nargs='*', metavar='SYMBOL', help='override proof types to skip for --guest-with-to-axiom')
        axiom_parser.add_argument('--all-to-axiom', default=False, action='store_true', help='turn all statements to axioms for --guest-with-to-axiom')
        argparser.add_argument(
            '--update_performance', default=False, action='store_true', help='Update performance report file'
        )

        include_exclude_parser = argparser.add_mutually_exclusive_group()
        include_exclude_parser.add_argument('--include', nargs='*', help='Specify which metrics should be included.')
        include_exclude_parser.add_argument('--exclude', nargs='*', help='Specify which metrics should be excluded.')

        argparser.add_argument(
            '--output-format', type=OutputFormat, choices=list(OutputFormat))

        args = argparser.parse_args()
        self.skip_guest = args.skip_guest
        if args.output_format is not None:
            self.output_format = args.output_format
        if not self.skip_guest:
            self.statistics.register_metric(self.guest_cycles_pattern, 'GuestCycles')
        self.guest_with_to_axiom = args.guest_with_to_axiom
        self.to_axiom = args.to_axiom
        self.all_to_axiom = args.all_to_axiom
        if self.guest_with_to_axiom:
            self.statistics.register_metric(self.guest_to_axiom_cycles_pattern, 'GuestToAxiomsCycles')
        else:
            if self.to_axiom is not None or self.all_to_axiom:
                argparser.error('Cannot use --to-axiom or --all-to-axiom without --guest-with-to-axiom')
        if args.include is not None:
            self.statistics.set_includes(['FileName'] + args.include)
        elif args.exclude:
            self.statistics.set_excludes(args.exclude)
        if args.baseline:
            self.statistics.register_metric(self.guest_cycles_pattern, 'GuestCycles')
            self.statistics.register_metric(self.base_guest_cycles_pattern, 'BaseGuestCycles')
            self.statistics.register_metric(self.delta_guest_cycles_pattern, 'PercentGuestCycles')
            self.baseline_exe = args.baseline
        self.tag_files = args.tag
        if args.update_performance:
            # check whether the git workdir is dirty
            proc = subprocess.run(['git', 'diff-index', '--quiet', 'HEAD', '--'])
            if proc.returncode == 0: # if not dirty, we enable updating the performance file
                self.update_performance = True
            else:
                print('Warning: Current git work dir is dirty. Performance file will not be updated.', file=sys.stderr)
        if args.file is not None:
            self.statistics.exclude_metric('FileName')
            self.print_header()
            self.mm_base_dir = args.file.parent
            self.handle_mm_file(args.file)
        else:
            self.mm_base_dir = args.dir
            self.handle_mm_dir()

    def print_header(self):
        match self.output_format:
            case OutputFormat.md:
                print(self.statistics.md_header())
            case OutputFormat.csv:
                print(self.statistics.header())

    def handle_mm_dir(self):
        """
        For each mm file in the `self.mm_base_dir` directory, run the mmtool and host on it and print the stats
        """
        self.print_header()
        for mm_file in self.mm_base_dir.rglob('*.mm'):
            self.handle_mm_file(mm_file)

    def handle_mm_file(self, mm_file):
        """
        For the given mm file, run the mmtool and host on it and print the stats
        """
        stats = self.get_mm_stats(mm_file)
        match self.output_format:
            case OutputFormat.md:
                print(self.statistics.format_separated_stats(stats, separator=' | '))
            case OutputFormat.csv:
                print(self.statistics.format_separated_stats(stats))
            case OutputFormat.json:
                print(self.statistics.format_stats(stats))
        if self.tag_files:
            self.tag_mm_file(mm_file, stats)
        if self.update_performance:
            self.print_git_with_cycle_count(mm_file, stats)

    def print_git_with_cycle_count(self, mm_file, stats):
        commit_hash, commit_date = get_git_commit_info()
        if 'guest cycles' in stats:
            with open(self.performance_csv_file, 'a') as f:
                f.write(f'mm-risc0,{commit_hash},{commit_date},{mm_file.resolve().relative_to(self.repo_root.resolve())},{stats["guest cycles"]}\n')
                # print(f'{mm_file.relative_to(self.mm_base_dir)} | {commit_hash} | {commit_date} | {stats["guest cycles"]}')


    def tag_mm_file(self, mm_file: Path, stats):
        """
        Writes the provided stats to the given file as a comment at its beginning.
        Detects and replaces pre-existing tag.
        """
        backup_file = mm_file.with_suffix('.mm.bak')
        shutil.copy2(mm_file, backup_file)
        with open(backup_file) as source, open(mm_file, "w") as destination:
            first_line = True
            previous_tag = False
            for line in source:
                if first_line:
                    first_line = False
                    if line.startswith(self.tag_header):
                        previous_tag = True
                    else:
                        self.write_tag(destination, stats)
                        destination.write(line)
                else:
                    if previous_tag:
                        if line.startswith(self.tag_footer):
                            previous_tag = False
                            self.write_tag(destination, stats)
                    else:
                        destination.write(line)

    def write_tag(self, destination, stats):
        destination.write(f'{self.tag_header}\n')
        out = self.statistics.format_stats(stats)
        destination.write(out)
        destination.write(f'{self.tag_footer}\n')

    def get_mm_stats(self, mm_file):
        """
        Runs the mmtool, then maybe the baseline host, then the host.
        Returns the agrgegated statistics from the tools run.
        """
        stats = {}
        stats['FileName'] = str(mm_file.relative_to(self.mm_base_dir))
        self.run_and_update_stats(mm_file, stats, self.mmtool_exe)
        if not self.statistics.is_enabled(self.guest_cycles_pattern):
            return stats
        env = os.environ.copy()
        env['RISC0_DEV_MODE'] = '1'
        stats.pop(self.guest_cycles_pattern, None)
        last_prop_cmd = []
        last_prop = stats.get(self.last_prop_pattern)
        if last_prop is not None:
            if last_prop != '$( None $)':
                last_prop_cmd = [last_prop]
            else:
                stats.pop(self.last_prop_pattern, None)
        if self.baseline_exe:
            self.run_and_update_stats(mm_file, stats, self.baseline_exe, env,  last_prop_cmd)
            if self.guest_cycles_pattern not in stats:
                return stats
            stats[self.base_guest_cycles_pattern] = stats.pop(self.guest_cycles_pattern)
        if self.guest_with_to_axiom:
            extra_args = last_prop_cmd
            if self.all_to_axiom:
                extra_args = ['--all-to-axiom']
            elif self.to_axiom is not None:
                extra_args = extra_args + ['--to-axiom'] + self.to_axiom
            self.run_and_update_stats(mm_file, stats, self.host_exe, env, extra_args)
            if self.guest_cycles_pattern not in stats:
                return stats
            x = stats.pop(self.guest_cycles_pattern)
            stats[self.guest_to_axiom_cycles_pattern] = x
        self.run_and_update_stats(mm_file, stats, self.host_exe, env, last_prop_cmd)
        if self.base_guest_cycles_pattern in stats and self.guest_cycles_pattern in stats:
            stats[self.delta_guest_cycles_pattern] = int(stats[self.guest_cycles_pattern]) * 10000 // int(stats[self.base_guest_cycles_pattern]) / 100.0
            stats[self.delta_guest_cycles_label] = int(stats[self.guest_cycles_label]) * 10000 // int(stats[self.base_guest_cycles_label]) / 100.0
        return stats

    def run_and_update_stats(self, mm_file, stats, host_exe, env = None, extra_args = []):
        """
        Given a mm file and a host-like executable, runs the host on the file,
        parses the output, and updates the statistics with the ones extracted.
        """
        cmd = [host_exe, str(mm_file)] + extra_args
        self.statistics.run_and_update_stats(stats, cmd, env)

def main() -> None:
    MMToolReport().main()

if __name__ == '__main__':
    main()
