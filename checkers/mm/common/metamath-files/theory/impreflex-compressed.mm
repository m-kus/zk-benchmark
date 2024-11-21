$( mmtool stats
Propositions: 1
Constants: 4
Variables: 1
VarHyps: 10
LogHyp: 2
DsjVarPairs: 0
ProofSteps: 34
TotalLemmaSize: 96
TotalClaimSize: 216
MaxStackDepth: 7
MaxStackSize: 96
GuestCycles: 70317
end mmtool stats $)
$c #Pattern $.
$v ph0 ph1 ph2 $.
ph0-is-pattern $f #Pattern ph0 $.
ph1-is-pattern $f #Pattern ph1 $.
ph2-is-pattern $f #Pattern ph2 $.
$c |- $.
$c \imp    $.
$c ( )     $.
imp-is-pattern $a #Pattern ( \imp ph0 ph1 ) $.
proof-rule-prop-1 $a |- ( \imp ph0 ( \imp ph1 ph0 ) ) $.
proof-rule-prop-2 $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \imp ph0 ph1 ) ( \imp ph0 ph2 ) ) ) $.
${
    proof-rule-mp.0 $e |- ( \imp ph0 ph1 ) $.
    proof-rule-mp.1 $e |- ph0 $.
    proof-rule-mp   $a |- ph1 $.
$}
imp-reflexivity $p |- ( \imp ph0 ph0 ) $=
  ( imp-is-pattern proof-rule-prop-2 proof-rule-prop-1 proof-rule-mp ) AAABZBZF
  AFABBGFBAFACAFDEAADE $.
