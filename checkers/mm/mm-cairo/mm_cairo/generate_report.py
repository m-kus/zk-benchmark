#!/usr/bin/env python3
import os, subprocess
from pathlib import Path
import sys
import shutil

from argparse import ArgumentParser

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


class MMCairoReport:
    def __init__(self) -> None:
        script_dir: Path = Path(os.path.dirname(os.path.realpath(__file__)))
        self.mm_base_dir: Path = script_dir / '..' / '..'
        self.repo_root: Path = script_dir / '..' / '..' / '..' / '..'
        exe_base_dir = self.repo_root / '.build' / 'checker' / 'release'
        self.host_exe: Path = exe_base_dir / 'mm-cairo'
        self.mm_cairo_exe: Path = exe_base_dir / 'mm-cairo'
        self.common_dir: Path = self.repo_root / 'checker' / 'common'
        self.performance_csv_file: Path = self.common_dir / 'performance_over_time.csv'
        self.tag_files: bool = False
        self.update_performance: bool = False
        self.tag_header: str = '$( mm-cairo stats'
        self.tag_footer: str = 'end mm-cairo stats $)'
        self.n_cycles_label: str = 'cairo steps'
        self.stats: dict[str, str] = {
            'cairo steps' : 'Cairo Steps',
        }
        self.rev_stats: dict[str, str] = dict((v, k) for k,v in self.stats.items())


    def md_header(self):
        out = 'FileName '
        for v in self.stats.values():
            out += ' | ' + v
        out += '\n|-|' + '-|'*len(self.stats)
        return out

    def main(self):
        argparser = ArgumentParser(
            prog='Circuit checker',
            description='Command-line tool for profiling the Cairo implementation of the metamath checker',
        )
        choice_parser = argparser.add_mutually_exclusive_group()
        choice_parser.add_argument(
            '--dir', type=Path, help='The path of the directory containing files to be checked', default=self.mm_base_dir
        )
        choice_parser.add_argument('--file', type=Path, help='The path of the metamath file to be checked')
        argparser.add_argument(
            '--tag', default=False, action='store_true', help='Tag checked files with the result of the report'
        )
        argparser.add_argument(
            '--update_performance', default=False, action='store_true', help='Update performance report file'
        )

        include_exclude_parser = argparser.add_mutually_exclusive_group()
        include_exclude_parser.add_argument('--include', nargs='*', help=f'Specify which metrics should be included. Default: {self.rev_stats.keys()}')
        include_exclude_parser.add_argument('--exclude', nargs='*', help='Specify which metrics should be excluded. Default: none')

        args = argparser.parse_args()
        if args.include is not None:
            newstats = dict()
            for metric in args.include:
                if metric in self.rev_stats:
                    key = self.rev_stats[metric]
                    newstats[key] = metric
                else:
                    raise ValueError(f'Invalid metric {metric}. Available ones: {list(self.rev_stats.keys())}', file=sys.stderr)
            self.stats = newstats
        elif args.exclude:
            for metric in args.exclude:
                if metric in self.rev_stats:
                    key = self.rev_stats[metric]
                    self.stats.pop(key)
                else:
                    raise ValueError(f'Invalid metric {metric}. Available ones: {list(self.rev_stats.keys())}', file=sys.stderr)
        self.tag_files = args.tag
        if args.update_performance:
            # check whether the git workdir is dirty
            proc = subprocess.run(['git', 'diff-index', '--quiet', 'HEAD', '--'])
            if proc.returncode == 0: # if not dirty, we enable updating the performance file
                self.update_performance = True
            else:
                print('Warning: Current git work dir is dirty. Performance file will not be updated.', file=sys.stderr)
        if args.file is not None:
            print(self.md_header())
            self.mm_base_dir = args.file.parent
            self.handle_mm_file(args.file)
        else:
            self.mm_base_dir = args.dir
            self.handle_mm_dir()

    def handle_mm_dir(self):
        """
        For each mm file in the `self.mm_base_dir` directory, run the mmtool and host on it and print the stats
        """
        print(self.md_header())
        for mm_file in self.mm_base_dir.rglob('*.mm'):
            self.handle_mm_file(mm_file)

    def handle_mm_file(self, mm_file):
        """
        For the given mm file, run the mmtool and host on it and print the stats
        """
        stats = self.get_mm_stats(mm_file)
        out = self.format_mm_stats(mm_file, stats)
        print(out)
        if self.tag_files:
            self.tag_mm_file(mm_file, stats)
        if self.update_performance:
            self.print_git_with_cycle_count(mm_file, stats)

    def print_git_with_cycle_count(self, mm_file, stats):
        commit_hash, commit_date = get_git_commit_info()
        with open(self.performance_csv_file, 'a') as f:
            if 'cairo steps' in stats:
                f.write(f'mm-cairo,{commit_hash},{commit_date},{mm_file.resolve().relative_to(self.repo_root.resolve())},{stats["cairo steps"]}\n')


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
        for k in self.stats.keys():
            destination.write(f'{self.stats[k]}: {stats.get(k)}\n')
        destination.write(f'{self.tag_footer}\n')

    def format_mm_stats(self, mm_file, stats):
        out = str(mm_file.relative_to(self.mm_base_dir))
        for k in self.stats.keys():
            out += ' | ' + str(stats.get(k))
        return out

    def get_mm_stats(self, mm_file):
        """
        Runs the mmtool, then maybe the baseline host, then the host.
        Returns the agrgegated statistics from the tools run.
        """
        stats = dict()
        self.update_stats(mm_file, stats, self.mm_cairo_exe)
        if self.n_cycles_label not in self.stats:
            return stats
        return stats

    def update_stats(self, mm_file, stats, host_exe, env = None, extra_args = []):
        """
        Given a mm file and a host-like executable, runs the host on the file,
        parses the output, and updates the statistics with the ones extracted.
        """
        with subprocess.Popen([host_exe, str(mm_file)] + extra_args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, env=env) as process:
            stdout, _ = process.communicate()
            for out in stdout.split('\n'):
                stat_pair = out.split(': ')
                if len(stat_pair) >= 2:
                    stats[stat_pair[-2]] = stat_pair[-1]


if __name__ == '__main__':
    MMCairoReport().main()
