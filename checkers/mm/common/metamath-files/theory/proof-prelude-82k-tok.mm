$( mmtool stats
Propositions: 137
Constants: 57
Variables: 8
VarHyps: 750
LogHyp: 208
DsjVarPairs: 42
ProofSteps: 75268
TotalLemmaSize: 246227
TotalClaimSize: 861888
MaxStackDepth: 115
MaxStackSize: 5528
GuestCycles: 98933717
end mmtool stats $)
$c #Pattern $.
$c #ElementVariable $.
$c #SetVariable $.
$c #Variable $.
$c #Symbol $.
$v ph0 ph1 ph2 ph3 ph4 ph5 ph6 ph7 ph8 $.
$v th0 th1 th2 th3 th4 th5 th6 th7 th8 $.
$v x y z w $.
$v X Y Z W $.
$v xX yY $.
$v sg0 sg1 sg2 sg3 sg4 $.
ph0-is-pattern $f #Pattern ph0 $.
ph1-is-pattern $f #Pattern ph1 $.
ph2-is-pattern $f #Pattern ph2 $.
ph3-is-pattern $f #Pattern ph3 $.
ph4-is-pattern $f #Pattern ph4 $.
ph5-is-pattern $f #Pattern ph5 $.
ph6-is-pattern $f #Pattern ph6 $.
ph7-is-pattern $f #Pattern ph7 $.
ph8-is-pattern $f #Pattern ph8 $.
th0-is-pattern $f #Pattern th0 $.
th1-is-pattern $f #Pattern th1 $.
th2-is-pattern $f #Pattern th2 $.
th3-is-pattern $f #Pattern th3 $.
th4-is-pattern $f #Pattern th4 $.
th5-is-pattern $f #Pattern th5 $.
th6-is-pattern $f #Pattern th6 $.
th7-is-pattern $f #Pattern th7 $.
th8-is-pattern $f #Pattern th8 $.
x-is-element-var $f #ElementVariable x $.
y-is-element-var $f #ElementVariable y $.
z-is-element-var $f #ElementVariable z $.
w-is-element-var $f #ElementVariable w $.
X-is-element-var $f #SetVariable X $.
Y-is-element-var $f #SetVariable Y $.
Z-is-element-var $f #SetVariable Z $.
W-is-element-var $f #SetVariable W $.
xX-is-var $f #Variable xX $.
yY-is-var $f #Variable yY $.
sg0-is-symbol $f #Symbol sg0 $.
sg1-is-symbol $f #Symbol sg1 $.
sg2-is-symbol $f #Symbol sg2 $.
sg3-is-symbol $f #Symbol sg3 $.
sg4-is-symbol $f #Symbol sg4 $.
element-var-is-var $a #Variable x $.
set-var-is-var $a #Variable X $.
var-is-pattern $a #Pattern xX $.
symbol-is-pattern $a #Pattern sg0 $.
$c #Positive $.
$c #Negative $.
$c #Fresh $.
$c #ApplicationContext $.
$c #Substitution $.
$c #Notation $.
$c |- $.
$c \bot $.
$c \imp $.
$c \app $.
$c \exists $.
$c \mu $.
$c ( ) $.
bot-is-pattern $a #Pattern \bot $.
imp-is-pattern $a #Pattern ( \imp ph0 ph1 ) $.
app-is-pattern $a #Pattern ( \app ph0 ph1 ) $.
exists-is-pattern $a #Pattern ( \exists x ph0 ) $.
${ mu-is-pattern.0 $e #Positive X ph0 $.
   mu-is-pattern $a #Pattern ( \mu X ph0 ) $. $}
positive-in-var $a #Positive xX yY $.
positive-in-symbol $a #Positive xX sg0 $.
positive-in-bot $a #Positive xX \bot $.
${ positive-in-imp.0 $e #Negative xX ph0 $.
   positive-in-imp.1 $e #Positive xX ph1 $.
   positive-in-imp $a #Positive xX ( \imp ph0 ph1 ) $. $}
${ positive-in-app.0 $e #Positive xX ph0 $.
   positive-in-app.1 $e #Positive xX ph1 $.
   positive-in-app $a #Positive xX ( \app ph0 ph1 ) $. $}
${ positive-in-exists.0 $e #Positive xX ph0 $.
   positive-in-exists $a #Positive xX ( \exists x ph0 ) $. $}
${ positive-in-mu.0 $e #Positive xX ph0 $.
   positive-in-mu $a #Positive xX ( \mu X ph0 ) $. $}
${ $d xX ph0 $.
   positive-disjoint $a #Positive xX ph0 $. $}
${ $d xX yY $.
   negative-in-var $a #Negative xX yY $. $}
negative-in-symbol $a #Negative xX sg0 $.
negative-in-bot $a #Negative xX \bot $.
${ negative-in-imp.0 $e #Positive xX ph0 $.
   negative-in-imp.1 $e #Negative xX ph1 $.
   negative-in-imp $a #Negative xX ( \imp ph0 ph1 ) $. $}
${ negative-in-app.0 $e #Negative xX ph0 $.
   negative-in-app.1 $e #Negative xX ph1 $.
   negative-in-app $a #Negative xX ( \app ph0 ph1 ) $. $}
${ negative-in-exists.0 $e #Negative xX ph0 $.
   negative-in-exists $a #Negative xX ( \exists x ph0 ) $. $}
${ negative-in-mu.0 $e #Negative xX ph0 $.
   negative-in-mu $a #Negative xX ( \mu X ph0 ) $. $}
${ $d xX ph0 $.
   negative-disjoint $a #Negative xX ph0 $. $}
${ $d xX yY $.
   fresh-in-var $a #Fresh xX yY $. $}
fresh-in-symbol $a #Fresh xX sg0 $.
fresh-in-bot $a #Fresh xX \bot $.
${ fresh-in-imp.0 $e #Fresh xX ph0 $.
   fresh-in-imp.1 $e #Fresh xX ph1 $.
   fresh-in-imp $a #Fresh xX ( \imp ph0 ph1 ) $. $}
${ fresh-in-app.0 $e #Fresh xX ph0 $.
   fresh-in-app.1 $e #Fresh xX ph1 $.
   fresh-in-app $a #Fresh xX ( \app ph0 ph1 ) $. $}
${ $d xX x $.
   fresh-in-exists.0 $e #Fresh xX ph0 $.
   fresh-in-exists $a #Fresh xX ( \exists x ph0 ) $. $}
fresh-in-exists-shadowed $a #Fresh x ( \exists x ph0 ) $.
${ $d xX X $.
   fresh-in-mu.0 $e #Fresh xX ph0 $.
   fresh-in-mu $a #Fresh xX ( \mu X ph0 ) $. $}
fresh-in-mu-shadowed $a #Fresh X ( \mu X ph0 ) $.
${ $d xX ph0 $.
   fresh-disjoint $a #Fresh xX ph0 $. $}
${ fresh-in-substitution.0 $e #Fresh xX ph1 $.
   fresh-in-substitution.1 $e #Substitution ph2 ph0 ph1 xX $.
   fresh-in-substitution $a #Fresh xX ph2 $. $}
${ fresh-after-substitution.0 $e #Fresh xX ph0 $.
   fresh-after-substitution.1 $e #Fresh xX ph1 $.
   fresh-after-substitution.2 $e #Substitution ph2 ph0 ph1 yY $.
   fresh-after-substitution $a #Fresh xX ph2 $. $}
substitution-var-same $a #Substitution ph0 xX ph0 xX $.
${ $d xX yY $.
   substitution-var-diff $a #Substitution yY yY ph0 xX $. $}
substitution-symbol $a #Substitution sg0 sg0 ph0 xX $.
substitution-bot $a #Substitution \bot \bot ph0 xX $.
${ substitution-imp.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-imp.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-imp $a #Substitution ( \imp ph1 ph2 ) ( \imp ph3 ph4 ) ph0 xX $. $}
${ substitution-app.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-app.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-app $a #Substitution ( \app ph1 ph2 ) ( \app ph3 ph4 ) ph0 xX $. $}
substitution-exists-shadowed $a #Substitution ( \exists x ph1 ) ( \exists x ph1 ) ph0 x $.
${ $d xX x $.
   $d y ph0 $.
   substitution-exists.0 $e #Substitution ph2 ph1 y x $.
   substitution-exists.1 $e #Substitution ph3 ph2 ph0 xX $.
   substitution-exists $a #Substitution ( \exists y ph3 ) ( \exists x ph1 ) ph0 xX $. $}
substitution-mu-shadowed $a #Substitution ( \mu X ph1 ) ( \mu X ph1 ) ph0 X $.
${ $d xX X $.
   $d Y ph0 $.
   substitution-mu.0 $e #Substitution ph2 ph1 Y X $.
   substitution-mu.1 $e #Substitution ph3 ph2 ph0 xX $.
   substitution-mu $a #Substitution ( \mu Y ph3 ) ( \mu X ph1 ) ph0 xX $. $}
substitution-identity $a #Substitution ph0 ph0 xX xX $.
${ yY-free-in-ph0 $e #Fresh yY ph0 $.
   ph1-definition $e #Substitution ph1 ph0 yY xX $.
   ${ substitution-fold.0 $e #Substitution ph2 ph1 ph3 yY $.
      substitution-fold $a #Substitution ph2 ph0 ph3 xX $. $}
   ${ substitution-unfold.0 $e #Substitution ph2 ph0 ph3 xX $.
      substitution-unfold $a #Substitution ph2 ph1 ph3 yY $. $} $}
${ substitution-inverse.0 $e #Fresh xX ph0 $.
   substitution-inverse.1 $e #Substitution ph1 ph0 xX yY $.
   substitution-inverse $a #Substitution ph0 ph1 yY xX $. $}
${ substitution-fresh.0 $e #Fresh xX ph0 $.
   substitution-fresh $a #Substitution ph0 ph0 ph1 xX $. $}
application-context-var $a #ApplicationContext xX xX $.
${ $d xX ph1 $.
   application-context-app-left.0 $e #ApplicationContext xX ph0 $.
   application-context-app-left $a #ApplicationContext xX ( \app ph0 ph1 ) $. $}
${ $d xX ph0 $.
   application-context-app-right.0 $e #ApplicationContext xX ph1 $.
   application-context-app-right $a #ApplicationContext xX ( \app ph0 ph1 ) $. $}
notation-reflexivity $a #Notation ph0 ph0 $.
${ notation-symmetry.0 $e #Notation ph0 ph1 $.
   notation-symmetry $a #Notation ph1 ph0 $. $}
${ notation-transitivity.0 $e #Notation ph0 ph1 $.
   notation-transitivity.1 $e #Notation ph1 ph2 $.
   notation-transitivity $a #Notation ph0 ph2 $. $}
${ notation-positive.0 $e #Positive xX ph0 $.
   notation-positive.1 $e #Notation ph1 ph0 $.
   notation-positive $a #Positive xX ph1 $. $}
${ notation-negative.0 $e #Negative xX ph0 $.
   notation-negative.1 $e #Notation ph1 ph0 $.
   notation-negative $a #Negative xX ph1 $. $}
${ notation-fresh.0 $e #Fresh xX ph0 $.
   notation-fresh.1 $e #Notation ph1 ph0 $.
   notation-fresh $a #Fresh xX ph1 $. $}
${ notation-substitution.0 $e #Substitution ph0 ph1 ph2 xX $.
   notation-substitution.1 $e #Notation ph3 ph0 $.
   notation-substitution.2 $e #Notation ph4 ph1 $.
   notation-substitution.3 $e #Notation ph5 ph2 $.
   notation-substitution $a #Substitution ph3 ph4 ph5 xX $. $}
${ notation-notation.0 $e #Notation ph0 ph1 $.
   notation-notation.1 $e #Notation ph2 ph0 $.
   notation-notation.2 $e #Notation ph3 ph1 $.
   notation-notation $p #Notation ph2 ph3 $= ( notation-transitivity notation-symmetry ) CADFABDEDBGIHH $. $}
${ notation-application-context.0 $e #ApplicationContext xX ph0 $.
   notation-application-context.1 $e #Notation ph1 ph0 $.
   notation-application-context $a #ApplicationContext xX ph1 $. $}
${ notation-proof.0 $e |- ph0 $.
   notation-proof.1 $e #Notation ph1 ph0 $.
   notation-proof $a |- ph1 $. $}
${ notation-imp.0 $e #Notation ph0 ph2 $.
   notation-imp.1 $e #Notation ph1 ph3 $.
   notation-imp $a #Notation ( \imp ph0 ph1 ) ( \imp ph2 ph3 ) $. $}
${ notation-app.0 $e #Notation ph0 ph2 $.
   notation-app.1 $e #Notation ph1 ph3 $.
   notation-app $a #Notation ( \app ph0 ph1 ) ( \app ph2 ph3 ) $. $}
${ notation-exists.0 $e #Notation ph0 ph1 $.
   notation-exists $a #Notation ( \exists x ph0 ) ( \exists x ph1 ) $. $}
${ notation-mu.0 $e #Notation ph0 ph1 $.
   notation-mu $a #Notation ( \mu X ph0 ) ( \mu X ph1 ) $. $}
$c \not $.
not-is-pattern $a #Pattern ( \not ph0 ) $.
not-is-sugar $a #Notation ( \not ph0 ) ( \imp ph0 \bot ) $.
$c \or $.
or-is-pattern $a #Pattern ( \or ph0 ph1 ) $.
or-is-sugar $a #Notation ( \or ph0 ph1 ) ( \imp ( \not ph0 ) ph1 ) $.
$c \and $.
and-is-pattern $a #Pattern ( \and ph0 ph1 ) $.
and-is-sugar $a #Notation ( \and ph0 ph1 ) ( \not ( \or ( \not ph0 ) ( \not ph1 ) ) ) $.
proof-rule-prop-1 $a |- ( \imp ph0 ( \imp ph1 ph0 ) ) $.
proof-rule-prop-2 $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \imp ph0 ph1 ) ( \imp ph0 ph2 ) ) ) $.
proof-rule-prop-3 $a |- ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ph0 ) $.
${ proof-rule-mp.0 $e |- ( \imp ph0 ph1 ) $.
   proof-rule-mp.1 $e |- ph0 $.
   proof-rule-mp $a |- ph1 $. $}
${ proof-rule-exists.0 $e #Substitution ph0 ph1 y x $.
   proof-rule-exists $a |- ( \imp ph0 ( \exists x ph1 ) ) $. $}
${ proof-rule-gen.0 $e |- ( \imp ph0 ph1 ) $.
   proof-rule-gen.1 $e #Fresh x ph1 $.
   proof-rule-gen $a |- ( \imp ( \exists x ph0 ) ph1 ) $. $}
${ proof-rule-propagation-bot.0 $e #ApplicationContext xX ph0 $.
   proof-rule-propagation-bot.1 $e #Substitution ph1 ph0 \bot xX $.
   proof-rule-propagation-bot $a |- ( \imp ph1 \bot ) $. $}
${ proof-rule-propagation-or.0 $e #ApplicationContext xX ph0 $.
   proof-rule-propagation-or.1 $e #Substitution ph1 ph0 ( \or ph4 ph5 ) xX $.
   proof-rule-propagation-or.2 $e #Substitution ph2 ph0 ph4 xX $.
   proof-rule-propagation-or.3 $e #Substitution ph3 ph0 ph5 xX $.
   proof-rule-propagation-or $a |- ( \imp ph1 ( \or ph2 ph3 ) ) $. $}
${ proof-rule-propagation-exists.0 $e #ApplicationContext xX ph0 $.
   proof-rule-propagation-exists.1 $e #Substitution ph1 ph0 ( \exists y ph3 ) xX $.
   proof-rule-propagation-exists.2 $e #Substitution ph2 ph0 ph3 xX $.
   proof-rule-propagation-exists.3 $e #Fresh y ph0 $.
   proof-rule-propagation-exists $a |- ( \imp ph1 ( \exists y ph2 ) ) $. $}
${ proof-rule-frame.0 $e #ApplicationContext xX ph0 $.
   proof-rule-frame.1 $e #Substitution ph1 ph0 ph3 xX $.
   proof-rule-frame.2 $e #Substitution ph2 ph0 ph4 xX $.
   proof-rule-frame.3 $e |- ( \imp ph3 ph4 ) $.
   proof-rule-frame $a |- ( \imp ph1 ph2 ) $. $}
${ proof-rule-prefixpoint.0 $e #Substitution ph0 ph1 ( \mu X ph1 ) X $.
   proof-rule-prefixpoint $a |- ( \imp ph0 ( \mu X ph1 ) ) $. $}
${ proof-rule-kt.0 $e #Substitution ph0 ph1 ph2 X $.
   proof-rule-kt.1 $e |- ( \imp ph0 ph2 ) $.
   proof-rule-kt $a |- ( \imp ( \mu X ph1 ) ph2 ) $. $}
${ proof-rule-set-var-substitution.0 $e #Substitution ph0 ph1 ph2 X $.
   proof-rule-set-var-substitution.1 $e |- ph1 $.
   proof-rule-set-var-substitution $a |- ph0 $. $}
proof-rule-existence $a |- ( \exists x x ) $.
${ proof-rule-singleton.0 $e #ApplicationContext xX ph0 $.
   proof-rule-singleton.1 $e #ApplicationContext yY ph1 $.
   proof-rule-singleton.2 $e #Substitution ph3 ph0 ( \and x ph2 ) xX $.
   proof-rule-singleton.3 $e #Substitution ph4 ph1 ( \and x ( \not ph2 ) ) yY $.
   proof-rule-singleton $a |- ( \not ( \and ph3 ph4 ) ) $. $}
$v x0 x1 x2 x3 $.
x0-is-element-var $f #ElementVariable x0 $.
x1-is-element-var $f #ElementVariable x1 $.
x2-is-element-var $f #ElementVariable x2 $.
x3-is-element-var $f #ElementVariable x3 $.
$v s0 s1 s2 s3 $.
s0-is-element-var $f #ElementVariable s0 $.
s1-is-element-var $f #ElementVariable s1 $.
s2-is-element-var $f #ElementVariable s2 $.
s3-is-element-var $f #ElementVariable s3 $.
$c \top $.
top-is-pattern $a #Pattern \top $.
top-is-sugar $a #Notation \top ( \not \bot ) $.
$c \iff $.
iff-is-pattern $a #Pattern ( \iff ph0 ph1 ) $.
iff-is-sugar $a #Notation ( \iff ph0 ph1 ) ( \and ( \imp ph0 ph1 ) ( \imp ph1 ph0 ) ) $.
$c \forall $.
forall-is-pattern $a #Pattern ( \forall x ph0 ) $.
forall-is-sugar $a #Notation ( \forall x ph0 ) ( \not ( \exists x ( \not ph0 ) ) ) $.
$c \nu $.
${ nu-is-pattern.0 $e #Positive X ph0 $.
   nu-is-pattern $a #Pattern ( \nu X ph0 ) $. $}
${ nu-is-sugar.0 $e #Substitution ph0 ph1 ( \not X ) X $.
   nu-is-sugar $a #Notation ( \nu X ph1 ) ( \not ( \mu X ( \not ph0 ) ) ) $. $}
$c \definedness $.
definedness-is-symbol $a #Symbol \definedness $.
$c \ceil $.
ceil-is-pattern $a #Pattern ( \ceil ph0 ) $.
ceil-is-sugar $a #Notation ( \ceil ph0 ) ( \app \definedness ph0 ) $.
axiom-definedness $a |- ( \ceil x ) $.
$c \floor $.
floor-is-pattern $a #Pattern ( \floor ph0 ) $.
floor-is-sugar $a #Notation ( \floor ph0 ) ( \not ( \ceil ( \not ph0 ) ) ) $.
$c \in $.
in-is-pattern $a #Pattern ( \in x ph0 ) $.
in-is-sugar $a #Notation ( \in x ph0 ) ( \ceil ( \and x ph0 ) ) $.
$c \included $.
included-is-pattern $a #Pattern ( \included ph0 ph1 ) $.
included-is-sugar $a #Notation ( \included ph0 ph1 ) ( \floor ( \imp ph0 ph1 ) ) $.
$c \eq $.
eq-is-pattern $a #Pattern ( \eq ph0 ph1 ) $.
eq-is-sugar $a #Notation ( \eq ph0 ph1 ) ( \floor ( \iff ph0 ph1 ) ) $.
${ eq-elim.0 $e #Substitution ph2 ph4 ph0 x $.
   eq-elim.1 $e #Substitution ph3 ph4 ph1 x $.
   eq-elim $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ph2 ph3 ) ) $. $}
$c \sort $.
sort-is-symbol $a #Symbol \sort $.
$c \inhabitant $.
inhabitant-is-symbol $a #Symbol \inhabitant $.
$c \inh $.
inh-is-pattern $a #Pattern ( \inh ph0 ) $.
inh-is-sugar $a #Notation ( \inh ph0 ) ( \app \inhabitant ph0 ) $.
$c \in-sort $.
in-sort-is-pattern $a #Pattern ( \in-sort ph0 ph1 ) $.
in-sort-is-sugar $a #Notation ( \in-sort ph0 ph1 ) ( \included ph0 ( \inh ph1 ) ) $.
inh-sort-nonempty $a |- ( \exists x ( \in-sort x \sort ) ) $.
$c \sorted-forall $.
sorted-forall-is-pattern $a #Pattern ( \sorted-forall x ph0 ph1 ) $.
sorted-forall-is-sugar $a #Notation ( \sorted-forall x ph0 ph1 ) ( \forall x ( \imp ( \in-sort x ph0 ) ph1 ) ) $.
$c \sorted-exists $.
sorted-exists-is-pattern $a #Pattern ( \sorted-exists x ph0 ph1 ) $.
sorted-exists-is-sugar $a #Notation ( \sorted-exists x ph0 ph1 ) ( \exists x ( \and ( \in-sort x ph0 ) ph1 ) ) $.
$c \forall-sort $.
forall-sort-is-pattern $a #Pattern ( \forall-sort s0 ph0 ) $.
forall-sort-is-sugar $a #Notation ( \forall-sort s0 ph0 ) ( \sorted-forall s0 \sort ph0 ) $.
$c \exists-sort $.
exists-sort-is-pattern $a #Pattern ( \exists-sort s0 ph0 ) $.
exists-sort-is-sugar $a #Notation ( \exists-sort s0 ph0 ) ( \sorted-exists s0 \sort ph0 ) $.
$c \is-singleton $.
is-singleton-is-pattern $a #Pattern ( \is-singleton ph0 ) $.
${ $d x ph0 $.
   is-singleton-is-sugar $a #Notation ( \is-singleton ph0 ) ( \exists x ( \eq x ph0 ) ) $. $}
$c \is-top $.
is-top-is-pattern $a #Pattern ( \is-top ph0 ) $.
is-top-is-sugar $a #Notation ( \is-top ph0 ) ( \eq ph0 \top ) $.
$c \is-bot $.
is-bot-is-pattern $a #Pattern ( \is-bot ph0 ) $.
is-bot-is-sugar $a #Notation ( \is-bot ph0 ) ( \eq ph0 \bot ) $.
$c \is-predicate $.
is-predicate-is-pattern $a #Pattern ( \is-predicate ph0 ) $.
is-predicate-is-sugar $a #Notation ( \is-predicate ph0 ) ( \or ( \is-top ph0 ) ( \is-bot ph0 ) ) $.
$c \is-singleton-or-bot $.
is-singleton-or-bot-is-pattern $a #Pattern ( \is-singleton-or-bot ph0 ) $.
is-singleton-or-bot-is-sugar $a #Notation ( \is-singleton-or-bot ph0 ) ( \or ( \is-singleton ph0 ) ( \is-bot ph0 ) ) $.
$c \is-constant $.
is-constant-is-pattern $a #Pattern ( \is-constant ph0 ph1 ) $.
${ $d x ph0 $.
   $d x ph1 $.
   is-constant-is-sugar $a #Notation ( \is-constant ph0 ph1 ) ( \sorted-exists x ph1 ( \eq ph0 x ) ) $. $}
$c \is-unary-function $.
is-unary-function-is-pattern $a #Pattern ( \is-unary-function ph0 ph1 ph2 ) $.
${ $d x y ph0 $.
   $d x y ph1 $.
   $d x y ph2 $.
   is-unary-function-is-sugar $a #Notation ( \is-unary-function ph0 ph1 ph2 ) ( \sorted-forall x ph1 ( \sorted-exists y ph2 ( \eq ( \app ph0 x ) y ) ) ) $. $}
$c \is-binary-function $.
is-binary-function-is-pattern $a #Pattern ( \is-binary-function ph0 ph1 ph2 ph3 ) $.
${ $d x y z ph0 $.
   $d x y z ph1 $.
   $d x y z ph2 $.
   $d x y z ph3 $.
   is-binary-function-is-sugar $a #Notation ( \is-binary-function ph0 ph1 ph2 ph3 ) ( \sorted-forall x ph1 ( \sorted-forall y ph2 ( \sorted-exists z ph3 ( \eq ( \app ph0 x y ) z ) ) ) ) $. $}
$c \unit-sort $.
unit-sort-is-symbol $a #Symbol \unit-sort $.
unit-sort-is-sort $a |- ( \exists-sort x ( \eq x \unit-sort ) ) $.
$c \unit $.
unit-is-pattern $a #Symbol \unit $.
unit-is-singleton $a |- ( \is-singleton \unit ) $.
unit-sort $a |- ( \eq \unit ( \inh \unit-sort ) ) $.
$c \pair-sort-symbol $.
pair-sort-symbol-is-symbol $a #Symbol \pair-sort-symbol $.
axiom-pair-sort-is-sort $a |- ( \is-binary-function \pair-sort-symbol \sort \sort \sort ) $.
$c \pair-sort $.
pair-sort-is-pattern $a #Pattern ( \pair-sort ph0 ph1 ) $.
pair-sort-is-sugar $a #Notation ( \pair-sort ph0 ph1 ) ( \app ( \app \pair-sort-symbol ph0 ) ph1 ) $.
$c \pair-symbol $.
pair-symbol-is-symbol $a #Symbol \pair-symbol $.
axiom-pair-symbol-is-binary-function $a ( \forall-sort s0 ( \forall-sort s1 ( \is-binary-function \pair-symbol s0 s1 ( \pair-sort s0 s1 ) ) ) ) $.
$c \pair $.
pair-is-pattern $a #Pattern ( \pair ph0 ph1 ) $.
pair-is-sugar $a #Notation ( \pair ph0 ph1 ) ( \app ( \app \pair-symbol ph0 ) ph1 ) $.
$c \pair-fst-symbol $.
pair-fst-symbol-is-symbol $a #Symbol \pair-fst-symbol $.
axiom-pair-fst-symbol-is-unary-function $a ( \forall-sort s0 ( \forall-sort s1 ( \is-unary-function \pair-fst-symbol ( \pair-sort s0 s1 ) s0 ) ) ) $.
$c \pair-fst $.
pair-fst-is-pattern $a #Pattern ( \pair-fst ph0 ) $.
pair-fst-is-sugar $a #Notation ( \pair-fst ph0 ) ( \app \pair-fst-symbol ph0 ) $.
$c \pair-snd-symbol $.
pair-snd-symbol-is-symbol $a #Symbol \pair-snd-symbol $.
axiom-pair-snd-symbol-is-unary-function $a ( \forall-sort s0 ( \forall-sort s1 ( \is-unary-function \pair-snd-symbol ( \pair-sort s0 s1 ) s1 ) ) ) $.
$c \pair-snd $.
pair-snd-is-pattern $a #Pattern ( \pair-snd ph0 ) $.
pair-snd-is-sugar $a #Notation ( \pair-snd ph0 ) ( \app \pair-snd-symbol ph0 ) $.
axiom-pair-fst $a |- ( \forall-sort s0 ( \forall-sort s1 ( \sorted-forall x0 s0 ( \sorted-forall x1 s2 ( \eq ( \pair-fst ( \pair x1 x2 ) ) x1 ) ) ) ) ) $.
axiom-pair-snd $a |- ( \forall-sort s0 ( \forall-sort s1 ( \sorted-forall x0 s0 ( \sorted-forall x1 s2 ( \eq ( \pair-snd ( \pair x1 x2 ) ) x2 ) ) ) ) ) $.
axiom-pair-inj $a |- ( \forall-sort s0 ( \forall-sort s1 ( \sorted-forall x0 s0 ( \sorted-forall x1 s2 ( \sorted-forall x2 s0 ( \sorted-forall x3 s2 ( \imp ( \eq ( \pair x0 x1 ) ( \pair x2 x3 ) ) ( \and ( \eq x0 x2 ) ( \eq x1 x3 ) ) ) ) ) ) ) ) ) $.
axiom-pair-sort-inh $a |- ( \forall-sort s0 ( \forall-sort s1 ( \eq ( \inh ( \pair-sort s0 s1 ) ) ( \pair ( \inh s0 ) ( \inh s1 ) ) ) ) ) $.
imp-reflexivity $p |- ( \imp ph0 ph0 ) $= ( imp-is-pattern proof-rule-prop-1 proof-rule-mp proof-rule-prop-2 ) AAABBAABAAABABBAAABBAABBAAABAEAAABCDAACD $.
${ rule-imp-transitivity.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-transitivity.1 $e |- ( \imp ph1 ph2 ) $.
   rule-imp-transitivity $p |- ( \imp ph0 ph2 ) $= ( imp-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 ) ABFACFABCFFABFACFFABCHBCFABCFFBCFAIEGGDG $. $}
imp-transitivity $p |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph1 ph2 ) ( \imp ph0 ph2 ) ) ) $= ( imp-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-reflexivity ) ABDBCDABDDDABDBCDACDDDABDBCDABDDBCDACDDDDABDBCDABDDDABDBCDACDDDDABDBCDABDDBCDACDDFABDBCDABDACDDDDABDBCDABDDBCDACDDDDABDBCDABDACDDDBCDABDDBCDACDDDDDABDBCDABDACDDDDABDBCDABDDBCDACDDDDDABDBCDABDACDDDBCDABDDBCDACDDDFBCDABDACDDDBCDABDDBCDACDDDDABDBCDABDACDDDBCDABDDBCDACDDDDDBCDABDACDDDBCDABDDBCDACDDDDABDGBCDABDACDFEEABDBCDABCDDDDABDBCDABDACDDDDABDBCDABCDDDBCDABDACDDDDDABDBCDABCDDDDABDBCDABDACDDDDDABDBCDABCDDDBCDABDACDDDFABDBCDABCDDABDACDDDDDABDBCDABCDDDBCDABDACDDDDDABDBCDABCDDABDACDDDDBCDABCDDDBCDABDACDDDDDDABDBCDABCDDABDACDDDDDABDBCDABCDDDBCDABDACDDDDDDABDBCDABCDDABDACDDDDBCDABCDDDBCDABDACDDDDFBCDABCDDABDACDDDDBCDABCDDDBCDABDACDDDDDABDBCDABCDDABDACDDDDBCDABCDDDBCDABDACDDDDDDBCDABCDDABDACDDDDBCDABCDDDBCDABDACDDDDDABDGBCDABCDDABDACDDFEEABDABCDDABDACDDDDABDBCDABCDDABDACDDDDDABDABCDDABDACDDDBCDABCDDABDACDDDDDDABDABCDDABDACDDDDABDBCDABCDDABDACDDDDDDABDABCDDABDACDDDBCDABCDDABDACDDDDFABCDDABDACDDDBCDABCDDABDACDDDDDABDABCDDABDACDDDBCDABCDDABDACDDDDDDABCDDABDACDDDBCDABCDDABDACDDDDDABDGABCDDABDACDDDBCDGEEABCDDABDACDDDABDABCDDABDACDDDDABCDDABDACDDDABDGABCFEEEEABDBCDBCDDDABDBCDABCDDDDABDBCDBCDDBCDABCDDDDDABDBCDBCDDDABDBCDABCDDDDDABDBCDBCDDBCDABCDDDFABDBCDBCDABCDDDDDABDBCDBCDDBCDABCDDDDDABDBCDBCDABCDDDDBCDBCDDBCDABCDDDDDDABDBCDBCDABCDDDDDABDBCDBCDDBCDABCDDDDDDABDBCDBCDABCDDDDBCDBCDDBCDABCDDDDFBCDBCDABCDDDDBCDBCDDBCDABCDDDDDABDBCDBCDABCDDDDBCDBCDDBCDABCDDDDDDBCDBCDABCDDDDBCDBCDDBCDABCDDDDDABDGBCDBCDABCDDFEEABDBCDABCDDDDABDBCDBCDABCDDDDDABDBCDABCDDDBCDBCDABCDDDDDDABDBCDABCDDDDABDBCDBCDABCDDDDDDABDBCDABCDDDBCDBCDABCDDDDFBCDABCDDDBCDBCDABCDDDDDABDBCDABCDDDBCDBCDABCDDDDDDBCDABCDDDBCDBCDABCDDDDDABDGBCDABCDDDBCDGEEBCDABCDDDABDBCDABCDDDDBCDABCDDDABDGBCDAGEEEEBCDBCDDABDBCDBCDDDBCDBCDDABDGBCDHEEEEEABDABDDABDBCDABDDDABDABDBCDABDDDDABDABDDABDBCDABDDDDABDABDBCDABDDFABDBCDABDDDABDABDBCDABDDDDABDBCDABDDDABDGABDBCDGEEABDHEE $.
bot-elim $p |- ( \imp \bot ph0 ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-1 proof-rule-prop-2 proof-rule-prop-3 ) CACBCBBCABCACBCBABBCACBCBBCABBCACBCBAFACBCBABCACBCBABBACBCBABCEAGDDCACBED $.
contradiction $p |- ( \imp ( \imp ( \not ph0 ) \bot ) ph0 ) $= ( bot-is-pattern imp-is-pattern not-is-pattern notation-reflexivity notation-imp proof-rule-prop-3 not-is-sugar notation-symmetry notation-transitivity notation-proof ) ABCBCACADBCACAGADBCAABCBCAADBABCBADABCABCAHABCABCABCEIJBEFAEFK $.
top-intro $p |- \top $= ( bot-is-pattern imp-is-pattern not-is-pattern notation-symmetry top-is-pattern notation-transitivity imp-reflexivity top-is-sugar not-is-sugar notation-reflexivity notation-proof ) AABEAGEACAABHAABACACAABACAABAABAIAABAABAABJDFDDFK $.
mp $p |- ( \imp ph0 ( \imp ( \imp ph0 ph1 ) ph1 ) ) $= ( imp-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-reflexivity ) AABCACCAABCBCCAABCACABCBCCCAABCACCAABCBCCCAABCACABCBCEAABCABCCCAABCACABCBCCCAABCABCCABCACABCBCCCCAABCABCCCAABCACABCBCCCCAABCABCCABCACABCBCCEABCABCCABCACABCBCCCAABCABCCABCACABCBCCCCABCABCCABCACABCBCCCAFABCABEDDABCABCCAABCABCCCABCABCCAFABCGDDDAABCFD $.
not-elim $p |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) \bot ) ) $= ( bot-is-pattern mp ) ABC $.
or-intro-left $p |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) ph1 ) ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 bot-elim not-elim ) AADCDCCAADCBCCAADCDCADCBCCCAADCDCCAADCBCCCAADCDCADCBCFAADCDBCCCAADCDCADCBCCCAADCDBCCADCDCADCBCCCCAADCDBCCCAADCDCADCBCCCCAADCDBCCADCDCADCBCCFADCDBCCADCDCADCBCCCAADCDBCCADCDCADCBCCCCADCDBCCADCDCADCBCCCAGADCDBFEEADCDBCCAADCDBCCCADCDBCCAGDBCADCDBCCDBCADCGBHEEEEAIE $.
contrapositive $p |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph1 \bot ) ( \imp ph0 \bot ) ) ) $= ( bot-is-pattern imp-transitivity ) ABCD $.
${ rule-contrapositive.0 $e |- ( \imp ph0 ph1 ) $.
   rule-contrapositive $p |- ( \imp ( \imp ph1 \bot ) ( \imp ph0 \bot ) ) $= ( imp-is-pattern bot-is-pattern contrapositive proof-rule-mp ) ABDBEDAEDDABFCG $. $}
and-elim-left $p |- ( \imp ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ph0 ) $= ( imp-is-pattern bot-is-pattern or-intro-left rule-contrapositive proof-rule-prop-3 rule-imp-transitivity ) ADCDCBDCCDCADCDCAADCADCDCBDCCADCBDCEFAGH $.
and-elim-right $p |- ( \imp ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ph1 ) $= ( imp-is-pattern bot-is-pattern proof-rule-prop-1 rule-contrapositive proof-rule-prop-3 rule-imp-transitivity ) ADCDCBDCCDCBDCDCBBDCADCDCBDCCBDCADCDCEFBGH $.
not-elim-alt $p |- ( \imp ( \imp ph0 \bot ) ( \imp ph0 ph1 ) ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-reflexivity bot-elim ) ADCADCCADCABCCADCADCABCCCADCADCCADCABCCCADCADCABCFADCADBCCCADCADCABCCCADCADBCCADCABCCCCADCADBCCCADCADCABCCCCADCADBCCADCABCCFADBCCADCABCCCADCADBCCADCABCCCCADBCCADCABCCCADCGADBFEEADCDBCCADCADBCCCADCDBCADBCCCCADCDBCCADCADBCCCCADCDBCADBCCFDBCADBCCCADCDBCADBCCCCDBCADBCCCADCGDBCAGEEDBCADCDBCCDBCADCGBIEEEEADCAACCADCADCCADCAACADCCCADCAACCADCADCCCADCAACADCFADCAADCCCADCAACADCCCADCAADCCAACADCCCCADCAADCCCADCAACADCCCCADCAADCCAACADCCFAADCCAACADCCCADCAADCCAACADCCCCAADCCAACADCCCADCGAADFEEADCADCCADCAADCCCADCADCAADCCCCADCADCCADCAADCCCCADCADCAADCCFADCAADCCCADCADCAADCCCCADCAADCCCADCGADCAGEEADCHEEEAACADCAACCAACADCGAHEEE $.
${ rule-peirce-bot.0 $e |- ( \imp ( \imp ph0 \bot ) ph0 ) $.
   rule-peirce-bot $p |- ph0 $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-3 proof-rule-prop-2 imp-reflexivity ) ADCDCAAFADCACADCDCADCADCCADCACADCDCCADCADGADCHEBEE $. $}
peirce-bot $p |- ( \imp ( \imp ( \imp ph0 \bot ) ph0 ) ph0 ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-reflexivity proof-rule-prop-3 ) ACBABACBCBBACBABABACBABACBCBABBACBABACBCBBACBABABBACBABACBCBAEACBCBABACBABACBCBABBACBCBABACBABFAHDDACBABACBABBACBABACBCBBACBABACBABACBCBBBACBABACBABBACBABACBCBBBACBABACBABACBCBEACBABACBACBBBACBABACBABACBCBBBACBABACBACBBACBABACBCBBBBACBABACBACBBBACBABACBABACBCBBBBACBABACBACBBACBABACBCBBEACBACBBACBABACBCBBBACBABACBACBBACBABACBCBBBBACBACBBACBABACBCBBBACBABFACBACEDDACBACBBACBABACBACBBBACBACBBACBABFACBGDDDACBABGDD $.
${ rule-peirce.0 $e |- ( \imp ( \imp ph0 ph1 ) ph0 ) $.
   rule-peirce $p |- ph0 $= ( imp-is-pattern bot-is-pattern proof-rule-mp peirce-bot imp-transitivity not-elim-alt ) AEDADAAGABDADAEDADAEDABDDABDADAEDADDAEDABDAHABIFCFF $. $}
peirce $p |- ( \imp ( \imp ( \imp ph0 ph1 ) ph0 ) ph0 ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 peirce-bot imp-transitivity not-elim-alt imp-reflexivity ) ABCACADCACCABCACACABCACADCACACCABCACADCACCABCACACCABCACADCACAFADCACACABCACADCACACCADCACACABCACGAHEEABCACABCACCABCACADCACCABCACABCACADCACCCABCACABCACCABCACADCACCCABCACABCACADCACFABCACADCABCCCABCACABCACADCACCCABCACADCABCCABCACADCACCCCABCACADCABCCCABCACABCACADCACCCCABCACADCABCCABCACADCACCFADCABCCABCACADCACCCABCACADCABCCABCACADCACCCCADCABCCABCACADCACCCABCACGADCABCAIEEADCABCCABCACADCABCCCADCABCCABCACGABJEEEABCACKEE $.
${ rule-or-elim-alt.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim-alt.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim-alt.2 $e |- ( \imp ( \imp ph0 \bot ) ph1 ) $.
   rule-or-elim-alt $p |- ph2 $= ( imp-is-pattern bot-is-pattern proof-rule-mp imp-transitivity peirce-bot contrapositive ) CHGCGCCKAHGCGCHGCGCHGAHGGAHGCGCHGCGGCHGAHGCJACGCHGAHGGACLDIIBCGAHGCGAHGBGBCGAHGCGGAHGBCJFIEIII $. $}
${ rule-or-elim.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim $p |- ( \imp ( \imp ( \imp ph0 \bot ) ph1 ) ph2 ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-transitivity peirce-bot contrapositive imp-reflexivity ) AGFBFCGFCFFAGFBFCFAGFBFCGFCFCFFAGFBFCGFCFFAGFBFCFFAGFBFCGFCFCICGFCFCFAGFBFCGFCFCFFCGFCFCFAGFBFJCLHHAGFBFAGFCFFAGFBFCGFCFFAGFBFAGFCFCGFCFFFAGFBFAGFCFFAGFBFCGFCFFFAGFBFAGFCFCGFCFIAGFBFCGFAGFFFAGFBFAGFCFCGFCFFFAGFBFCGFAGFFAGFCFCGFCFFFFAGFBFCGFAGFFFAGFBFAGFCFCGFCFFFFAGFBFCGFAGFFAGFCFCGFCFFICGFAGFFAGFCFCGFCFFFAGFBFCGFAGFFAGFCFCGFCFFFFCGFAGFFAGFCFCGFCFFFAGFBFJCGFAGFCKHHAGFBFACFFAGFBFCGFAGFFFAGFBFACFCGFAGFFFFAGFBFACFFAGFBFCGFAGFFFFAGFBFACFCGFAGFFIACFCGFAGFFFAGFBFACFCGFAGFFFFACFCGFAGFFFAGFBFJACMHHACFAGFBFACFFACFAGFBFJDHHHHAGFBFBCFFAGFBFAGFCFFAGFBFBCFAGFCFFFAGFBFBCFFAGFBFAGFCFFFAGFBFBCFAGFCFIAGFBFAGFBFFAGFBFBCFAGFCFFFAGFBFAGFBFBCFAGFCFFFFAGFBFAGFBFFAGFBFBCFAGFCFFFFAGFBFAGFBFBCFAGFCFFIAGFBFBCFAGFCFFFAGFBFAGFBFBCFAGFCFFFFAGFBFBCFAGFCFFFAGFBFJAGFBCKHHAGFBFNHHBCFAGFBFBCFFBCFAGFBFJEHHHH $. $}
or-elim $p |- ( \imp ( \imp ph0 ph2 ) ( \imp ( \imp ph1 ph2 ) ( \imp ( \imp ( \imp ph0 \bot ) ph1 ) ph2 ) ) ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-reflexivity imp-transitivity peirce-bot contrapositive ) ACDBCDAEDBDCEDCDDDDACDBCDAEDBDCDDDACDBCDAEDBDCEDCDDDBCDAEDBDCDDDDACDBCDAEDBDCEDCDDDDACDBCDAEDBDCDDDDACDBCDAEDBDCEDCDDDBCDAEDBDCDDGACDBCDAEDBDCEDCDDAEDBDCDDDDACDBCDAEDBDCEDCDDDBCDAEDBDCDDDDACDBCDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDDDBCDAEDBDCDDDDDACDBCDAEDBDCEDCDDAEDBDCDDDDACDBCDAEDBDCEDCDDDBCDAEDBDCDDDDDACDBCDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDDDBCDAEDBDCDDDGBCDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDDDBCDAEDBDCDDDDACDBCDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDDDBCDAEDBDCDDDDDBCDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDDDBCDAEDBDCDDDDACDHBCDAEDBDCEDCDDAEDBDCDGFFACDBCDAEDBDCEDCDCDDDDACDBCDAEDBDCEDCDDAEDBDCDDDDACDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDACDBCDAEDBDCEDCDCDDDDACDBCDAEDBDCEDCDDAEDBDCDDDDDACDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDGACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDACDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDDACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDACDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDDACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDGBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDBCDAEDBDCEDCDCDDDBCDAEDBDCEDCDDAEDBDCDDDDDACDHBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDGFFACDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDACDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDDACDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDACDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDDACDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDGAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDACDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDBCDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDDACDHAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDBCDHFFAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDACDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDDAEDBDCEDCDCDDAEDBDCEDCDDAEDBDCDDDACDHAEDBDCEDCDCGFFFFACDBCDCEDCDCDDDACDBCDAEDBDCEDCDCDDDDACDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDACDBCDCEDCDCDDDACDBCDAEDBDCEDCDCDDDDDACDBCDCEDCDCDDBCDAEDBDCEDCDCDDDGACDBCDCEDCDCDAEDBDCEDCDCDDDDDACDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDACDBCDCEDCDCDAEDBDCEDCDCDDDDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDDACDBCDCEDCDCDAEDBDCEDCDCDDDDDACDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDDACDBCDCEDCDCDAEDBDCEDCDCDDDDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDGBCDCEDCDCDAEDBDCEDCDCDDDDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDACDBCDCEDCDCDAEDBDCEDCDCDDDDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDDBCDCEDCDCDAEDBDCEDCDCDDDDBCDCEDCDCDDBCDAEDBDCEDCDCDDDDDACDHBCDCEDCDCDAEDBDCEDCDCDDGFFACDCEDCDCDAEDBDCEDCDCDDDDACDBCDCEDCDCDAEDBDCEDCDCDDDDDACDCEDCDCDAEDBDCEDCDCDDDBCDCEDCDCDAEDBDCEDCDCDDDDDDACDCEDCDCDAEDBDCEDCDCDDDDACDBCDCEDCDCDAEDBDCEDCDCDDDDDDACDCEDCDCDAEDBDCEDCDCDDDBCDCEDCDCDAEDBDCEDCDCDDDDGCEDCDCDAEDBDCEDCDCDDDBCDCEDCDCDAEDBDCEDCDCDDDDDACDCEDCDCDAEDBDCEDCDCDDDBCDCEDCDCDAEDBDCEDCDCDDDDDDCEDCDCDAEDBDCEDCDCDDDBCDCEDCDCDAEDBDCEDCDCDDDDDACDHCEDCDCDAEDBDCEDCDCDDDBCDHFFCEDCDCDAEDBDCEDCDCDDDACDCEDCDCDAEDBDCEDCDCDDDDCEDCDCDAEDBDCEDCDCDDDACDHCEDCDCDAEDBDHFFFFACDCEDCDCDDACDBCDCEDCDCDDDACDCEDCDCDBCDCEDCDCDDDDACDCEDCDCDDACDBCDCEDCDCDDDDACDCEDCDCDBCDCEDCDCDDGCEDCDCDBCDCEDCDCDDDACDCEDCDCDBCDCEDCDCDDDDCEDCDCDBCDCEDCDCDDDACDHCEDCDCDBCDHFFCEDCDCDACDCEDCDCDDCEDCDCDACDHCKFFFFFFACDBCDAEDBDAEDCDDDDACDBCDAEDBDCEDCDDDDACDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDDDDACDBCDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDGACDBCDAEDBDAEDCDDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDGBCDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDDDBCDAEDBDCEDCDDDDDACDHBCDAEDBDAEDCDDAEDBDCEDCDDGFFACDBCDAEDBDAEDCDCEDCDDDDDACDBCDAEDBDAEDCDDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDCEDCDDDDDACDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDGACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDDACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDDACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDGBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDBCDAEDBDAEDCDCEDCDDDDBCDAEDBDAEDCDDAEDBDCEDCDDDDDDACDHBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDGFFACDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDACDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDDACDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDACDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDDACDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDGAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDACDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDBCDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDDACDHAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDBCDHFFAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDACDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDDAEDBDAEDCDCEDCDDDAEDBDAEDCDDAEDBDCEDCDDDDACDHAEDBDAEDCDCEDCDGFFFFACDBCDAEDBDCEDAEDDDDDACDBCDAEDBDAEDCDCEDCDDDDDACDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDDDACDBCDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDGACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDGBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDDBCDAEDBDAEDCDCEDCDDDDDDACDHBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDGFFACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDGACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDGBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDHBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDGFFACDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDDACDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDDACDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDGAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDDACDHAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDBCDHFFAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDACDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDDAEDBDCEDAEDDAEDCDCEDCDDDDAEDBDCEDAEDDDAEDBDAEDCDCEDCDDDDDACDHAEDBDCEDAEDDAEDCDCEDCDDGFFFFACDBCDCEDAEDDAEDCDCEDCDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDDDACDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDGACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDGBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDBCDCEDAEDDAEDCDCEDCDDDDBCDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDHBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDGFFACDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDDACDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDACDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDDACDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDGCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDDACDHCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDBCDHFFCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDACDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDDCEDAEDDAEDCDCEDCDDDAEDBDCEDAEDDAEDCDCEDCDDDDDACDHCEDAEDDAEDCDCEDCDDDAEDBDHFFFFACDCEDAEDDAEDCDCEDCDDDDACDBCDCEDAEDDAEDCDCEDCDDDDDACDCEDAEDDAEDCDCEDCDDDBCDCEDAEDDAEDCDCEDCDDDDDDACDCEDAEDDAEDCDCEDCDDDDACDBCDCEDAEDDAEDCDCEDCDDDDDDACDCEDAEDDAEDCDCEDCDDDBCDCEDAEDDAEDCDCEDCDDDDGCEDAEDDAEDCDCEDCDDDBCDCEDAEDDAEDCDCEDCDDDDDACDCEDAEDDAEDCDCEDCDDDBCDCEDAEDDAEDCDCEDCDDDDDDCEDAEDDAEDCDCEDCDDDBCDCEDAEDDAEDCDCEDCDDDDDACDHCEDAEDDAEDCDCEDCDDDBCDHFFCEDAEDDAEDCDCEDCDDDACDCEDAEDDAEDCDCEDCDDDDCEDAEDDAEDCDCEDCDDDACDHCEDAEDCJFFFFFFACDBCDAEDBDACDDDDACDBCDAEDBDCEDAEDDDDDACDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDACDBCDAEDBDACDDDDACDBCDAEDBDCEDAEDDDDDDACDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDGACDBCDAEDBDACDDAEDBDCEDAEDDDDDDACDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDACDBCDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDDAEDBDCEDAEDDDDDDACDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDGBCDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDACDBCDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDDDBCDAEDBDCEDAEDDDDDDACDHBCDAEDBDACDDAEDBDCEDAEDDDGFFACDBCDAEDBDACDCEDAEDDDDDDACDBCDAEDBDACDDAEDBDCEDAEDDDDDDACDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDCEDAEDDDDDDACDBCDAEDBDACDDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDGACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDDACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDDACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDGBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDBCDAEDBDACDCEDAEDDDDDBCDAEDBDACDDAEDBDCEDAEDDDDDDDACDHBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDGFFACDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDACDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDDACDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDACDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDDACDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDGAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDACDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDBCDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDDACDHAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDBCDHFFAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDACDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDDAEDBDACDCEDAEDDDDAEDBDACDDAEDBDCEDAEDDDDDACDHAEDBDACDCEDAEDDGFFFFACDBCDACDCEDAEDDDDDACDBCDAEDBDACDCEDAEDDDDDDACDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDACDBCDACDCEDAEDDDDDACDBCDAEDBDACDCEDAEDDDDDDDACDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDGACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDACDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDDACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDACDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDDACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDGBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDBCDACDCEDAEDDDDBCDAEDBDACDCEDAEDDDDDDDACDHBCDACDCEDAEDDDAEDBDACDCEDAEDDDDGFFACDACDCEDAEDDDAEDBDACDCEDAEDDDDDDACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDACDACDCEDAEDDDAEDBDACDCEDAEDDDDDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDDACDACDCEDAEDDDAEDBDACDCEDAEDDDDDDACDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDDACDACDCEDAEDDDAEDBDACDCEDAEDDDDDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDGACDCEDAEDDDAEDBDACDCEDAEDDDDDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDACDACDCEDAEDDDAEDBDACDCEDAEDDDDDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDDACDCEDAEDDDAEDBDACDCEDAEDDDDDBCDACDCEDAEDDDAEDBDACDCEDAEDDDDDDDACDHACDCEDAEDDDAEDBDACDCEDAEDDDDDBCDHFFACDCEDAEDDDAEDBDACDCEDAEDDDDDACDACDCEDAEDDDAEDBDACDCEDAEDDDDDDACDCEDAEDDDAEDBDACDCEDAEDDDDDACDHACDCEDAEDDDAEDBDHFFFFACDACDCEDAEDDDDACDBCDACDCEDAEDDDDDACDACDCEDAEDDDBCDACDCEDAEDDDDDDACDACDCEDAEDDDDACDBCDACDCEDAEDDDDDDACDACDCEDAEDDDBCDACDCEDAEDDDDGACDCEDAEDDDBCDACDCEDAEDDDDDACDACDCEDAEDDDBCDACDCEDAEDDDDDDACDCEDAEDDDBCDACDCEDAEDDDDDACDHACDCEDAEDDDBCDHFFACDCEDAEDDDACDACDCEDAEDDDDACDCEDAEDDDACDHACLFFFFFFACDBCDACDDDACDBCDAEDBDACDDDDACDBCDACDDBCDAEDBDACDDDDDACDBCDACDDDACDBCDAEDBDACDDDDDACDBCDACDDBCDAEDBDACDDDGACDBCDACDAEDBDACDDDDDACDBCDACDDBCDAEDBDACDDDDDACDBCDACDAEDBDACDDDDBCDACDDBCDAEDBDACDDDDDDACDBCDACDAEDBDACDDDDDACDBCDACDDBCDAEDBDACDDDDDDACDBCDACDAEDBDACDDDDBCDACDDBCDAEDBDACDDDDGBCDACDAEDBDACDDDDBCDACDDBCDAEDBDACDDDDDACDBCDACDAEDBDACDDDDBCDACDDBCDAEDBDACDDDDDDBCDACDAEDBDACDDDDBCDACDDBCDAEDBDACDDDDDACDHBCDACDAEDBDACDDGFFACDACDAEDBDACDDDDACDBCDACDAEDBDACDDDDDACDACDAEDBDACDDDBCDACDAEDBDACDDDDDDACDACDAEDBDACDDDDACDBCDACDAEDBDACDDDDDDACDACDAEDBDACDDDBCDACDAEDBDACDDDDGACDAEDBDACDDDBCDACDAEDBDACDDDDDACDACDAEDBDACDDDBCDACDAEDBDACDDDDDDACDAEDBDACDDDBCDACDAEDBDACDDDDDACDHACDAEDBDACDDDBCDHFFACDAEDBDACDDDACDACDAEDBDACDDDDACDAEDBDACDDDACDHACDAEDBDHFFFFACDACDDACDBCDACDDDACDACDBCDACDDDDACDACDDACDBCDACDDDDACDACDBCDACDDGACDBCDACDDDACDACDBCDACDDDDACDBCDACDDDACDHACDBCDHFFACDIFFFFFFFACDBCDAEDBDBCDDDDACDBCDAEDBDAEDCDDDDACDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDACDBCDAEDBDBCDDDDACDBCDAEDBDAEDCDDDDDACDBCDAEDBDBCDDDBCDAEDBDAEDCDDDGACDBCDAEDBDBCDDAEDBDAEDCDDDDDACDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDACDBCDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDDACDBCDAEDBDBCDDAEDBDAEDCDDDDDACDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDDACDBCDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDGBCDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDACDBCDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDDBCDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDDDBCDAEDBDAEDCDDDDDACDHBCDAEDBDBCDDAEDBDAEDCDDGFFACDBCDAEDBDBCDAEDCDDDDDACDBCDAEDBDBCDDAEDBDAEDCDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDDDACDBCDAEDBDBCDDAEDBDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDGACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDGBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDBCDDAEDBDAEDCDDDDDDACDHBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDGFFACDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDACDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDDACDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDDACDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDGAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDACDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDBCDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDDACDHAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDBCDHFFAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDACDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDDAEDBDBCDAEDCDDDAEDBDBCDDAEDBDAEDCDDDDACDHAEDBDBCDAEDCDGFFFFACDBCDAEDBDAEDBDDDDACDBCDAEDBDBCDAEDCDDDDDACDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDDDACDBCDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDGACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDGBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDDBCDAEDBDBCDAEDCDDDDDDACDHBCDAEDBDAEDBDDAEDBDBCDAEDCDDDGFFACDBCDAEDBDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDGACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDGBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDBCDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDHBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDGFFACDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDDACDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDDACDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDGAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDDACDHAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDBCDHFFAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDACDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDDAEDBDAEDBDBCDAEDCDDDDAEDBDAEDBDDAEDBDBCDAEDCDDDDDACDHAEDBDAEDBDBCDAEDCDDGFFFFACDBCDAEDBDBCDAEDCDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDDDACDBCDAEDBDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDGACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDGBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDBCDAEDBDBCDAEDCDDDDBCDAEDBDAEDBDBCDAEDCDDDDDDDACDHBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDGFFACDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDACDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDDACDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDACDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDDACDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDGAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDACDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDBCDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDDACDHAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDBCDHFFAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDACDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDDAEDBDBCDAEDCDDDAEDBDAEDBDBCDAEDCDDDDDACDHAEDBDBCDAEDCDDDAEDBDHFFFFACDAEDBDBCDAEDCDDDDACDBCDAEDBDBCDAEDCDDDDDACDAEDBDBCDAEDCDDDBCDAEDBDBCDAEDCDDDDDDACDAEDBDBCDAEDCDDDDACDBCDAEDBDBCDAEDCDDDDDDACDAEDBDBCDAEDCDDDBCDAEDBDBCDAEDCDDDDGAEDBDBCDAEDCDDDBCDAEDBDBCDAEDCDDDDDACDAEDBDBCDAEDCDDDBCDAEDBDBCDAEDCDDDDDDAEDBDBCDAEDCDDDBCDAEDBDBCDAEDCDDDDDACDHAEDBDBCDAEDCDDDBCDHFFAEDBDBCDAEDCDDDACDAEDBDBCDAEDCDDDDAEDBDBCDAEDCDDDACDHAEDBCJFFFFFFACDAEDBDAEDBDDDACDBCDAEDBDAEDBDDDDACDAEDBDAEDBDDBCDAEDBDAEDBDDDDDACDAEDBDAEDBDDDACDBCDAEDBDAEDBDDDDDACDAEDBDAEDBDDBCDAEDBDAEDBDDDGAEDBDAEDBDDBCDAEDBDAEDBDDDDACDAEDBDAEDBDDBCDAEDBDAEDBDDDDDAEDBDAEDBDDBCDAEDBDAEDBDDDDACDHAEDBDAEDBDDBCDHFFAEDBDAEDBDDACDAEDBDAEDBDDDAEDBDAEDBDDACDHAEDBDIFFFFFFACDBCDBCDDDACDBCDAEDBDBCDDDDACDBCDBCDDBCDAEDBDBCDDDDDACDBCDBCDDDACDBCDAEDBDBCDDDDDACDBCDBCDDBCDAEDBDBCDDDGACDBCDBCDAEDBDBCDDDDDACDBCDBCDDBCDAEDBDBCDDDDDACDBCDBCDAEDBDBCDDDDBCDBCDDBCDAEDBDBCDDDDDDACDBCDBCDAEDBDBCDDDDDACDBCDBCDDBCDAEDBDBCDDDDDDACDBCDBCDAEDBDBCDDDDBCDBCDDBCDAEDBDBCDDDDGBCDBCDAEDBDBCDDDDBCDBCDDBCDAEDBDBCDDDDDACDBCDBCDAEDBDBCDDDDBCDBCDDBCDAEDBDBCDDDDDDBCDBCDAEDBDBCDDDDBCDBCDDBCDAEDBDBCDDDDDACDHBCDBCDAEDBDBCDDGFFACDBCDAEDBDBCDDDDACDBCDBCDAEDBDBCDDDDDACDBCDAEDBDBCDDDBCDBCDAEDBDBCDDDDDDACDBCDAEDBDBCDDDDACDBCDBCDAEDBDBCDDDDDDACDBCDAEDBDBCDDDBCDBCDAEDBDBCDDDDGBCDAEDBDBCDDDBCDBCDAEDBDBCDDDDDACDBCDAEDBDBCDDDBCDBCDAEDBDBCDDDDDDBCDAEDBDBCDDDBCDBCDAEDBDBCDDDDDACDHBCDAEDBDBCDDDBCDHFFBCDAEDBDBCDDDACDBCDAEDBDBCDDDDBCDAEDBDBCDDDACDHBCDAEDBDHFFFFBCDBCDDACDBCDBCDDDBCDBCDDACDHBCDIFFFFF $.
${ rule-and-intro-alt.0 $e |- ph0 $.
   rule-and-intro-alt $p |- ( \imp ph1 ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp not-elim imp-transitivity contrapositive or-elim not-elim-alt imp-reflexivity ) BEDEDAEDEDBEDDEDDBAEDEDBEDDEDDBBEDEDDBEDEDAEDEDBEDDEDDBAEDEDBEDDEDDDBBEDEDAEDEDBEDDEDHBGFAEDEDBEDDBEDDBEDEDAEDEDBEDDEDDAEDEDBEDDBEDIBEDBEDDAEDEDBEDDBEDDAEDBEDDBEDBEDDAEDEDBEDDBEDDDAEDBEDBEDJAEDEDAEDBEDDAEDBEDKAAEDEDAGCFFFBEDLFFF $. $}
and-intro $p |- ( \imp ph0 ( \imp ph1 ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ) ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 not-elim imp-reflexivity imp-transitivity contrapositive or-elim not-elim-alt ) ABDCDCADCDCBDCCDCCCABADCDCBDCCDCCCABDCDCADCDCBDCCDCCBADCDCBDCCDCCCCABDCDCADCDCBDCCDCCCABADCDCBDCCDCCCCABDCDCADCDCBDCCDCCBADCDCBDCCDCCFABBDCDCCCABDCDCADCDCBDCCDCCBADCDCBDCCDCCCCABBDCDCCBDCDCADCDCBDCCDCCBADCDCBDCCDCCCCCABBDCDCCCABDCDCADCDCBDCCDCCBADCDCBDCCDCCCCCABBDCDCCBDCDCADCDCBDCCDCCBADCDCBDCCDCCCFBBDCDCCBDCDCADCDCBDCCDCCBADCDCBDCCDCCCCABBDCDCCBDCDCADCDCBDCCDCCBADCDCBDCCDCCCCCBBDCDCCBDCDCADCDCBDCCDCCBADCDCBDCCDCCCCAGBBDCDCADCDCBDCCDCJEEBBDCDCCABBDCDCCCBBDCDCCAGBHEEEAADCDCBDCCBDCCCABDCDCADCDCBDCCDCCCAADCDCBDCCBDCCBDCDCADCDCBDCCDCCCCAADCDCBDCCBDCCCABDCDCADCDCBDCCDCCCCAADCDCBDCCBDCCBDCDCADCDCBDCCDCCFADCDCBDCCBDCCBDCDCADCDCBDCCDCCCAADCDCBDCCBDCCBDCDCADCDCBDCCDCCCCADCDCBDCCBDCCBDCDCADCDCBDCCDCCCAGADCDCBDCCBDCKEEABDCBDCCCAADCDCBDCCBDCCCABDCBDCCADCDCBDCCBDCCCCABDCBDCCCAADCDCBDCCBDCCCCABDCBDCCADCDCBDCCBDCCFAADCBDCCCABDCBDCCADCDCBDCCBDCCCCAADCBDCCBDCBDCCADCDCBDCCBDCCCCCAADCBDCCCABDCBDCCADCDCBDCCBDCCCCCAADCBDCCBDCBDCCADCDCBDCCBDCCCFADCBDCCBDCBDCCADCDCBDCCBDCCCCAADCBDCCBDCBDCCADCDCBDCCBDCCCCCADCBDCCBDCBDCCADCDCBDCCBDCCCCAGADCBDCBDCLEEAADCDCCAADCBDCCCAADCDCADCBDCCCCAADCDCCAADCBDCCCCAADCDCADCBDCCFADCDCADCBDCCCAADCDCADCBDCCCCADCDCADCBDCCCAGADCBDCMEEAACAADCDCCAAADCDCCCAACAADCDCCCAAADCDCFAADCDCCAAADCDCCCAADCDCCAGAHEEAIEEEEBDCBDCCABDCBDCCCBDCBDCCAGBDCIEEEE $.
${ rule-and-intro.0 $e |- ph0 $.
   rule-and-intro.1 $e |- ph1 $.
   rule-and-intro $p |- ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) $= ( imp-is-pattern bot-is-pattern proof-rule-mp and-intro ) BAFEFEBFEEFEABAFEFEBFEEFEEABHCGDG $. $}
and-elim-left-sugar $p |- ( \imp ( \and ph0 ph1 ) ph0 ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-transitivity notation-reflexivity not-is-sugar notation-imp and-is-pattern and-elim-left and-is-sugar or-is-sugar notation-proof ) ADCDCBDCCDCACABLACABMABLAADCDCBDCCDCAABLAEBEGEADCDCBDCCDCABNADCDCBDCCDCAEBEGEAEBEGEADCDCBDCCDCAEBEGEAEBEGDCADCDCBDCCDCAEBEGJADCDCBDCCDCAEBEGDCADCDCBDCCDAEBEGDAEBEGADCDCBDCCAEBEGAEEBECADCDCBDCCAEBEOADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAEJADCDCAEDCADCDAEDAEADCAEADCADCAJADCADCADCIFHFDIKFHFBEBDCBEBDCBDCBJBDCBDCBDCIFHFKFHFDIKFHFFHAIKP $.
and-elim-right-sugar $p |- ( \imp ( \and ph0 ph1 ) ph1 ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-transitivity notation-reflexivity not-is-sugar notation-imp and-is-pattern and-elim-right and-is-sugar or-is-sugar notation-proof ) ADCDCBDCCDCBCABLBCABMABLBADCDCBDCCDCBABLAEBEGEADCDCBDCCDCABNADCDCBDCCDCAEBEGEAEBEGEADCDCBDCCDCAEBEGEAEBEGDCADCDCBDCCDCAEBEGJADCDCBDCCDCAEBEGDCADCDCBDCCDAEBEGDAEBEGADCDCBDCCAEBEGAEEBECADCDCBDCCAEBEOADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAEJADCDCAEDCADCDAEDAEADCAEADCADCAJADCADCADCIFHFDIKFHFBEBDCBEBDCBDCBJBDCBDCBDCIFHFKFHFDIKFHFFHBIKP $.
and-intro-sugar $p |- ( \imp ph0 ( \imp ph1 ( \and ph0 ph1 ) ) ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-reflexivity notation-transitivity notation-imp and-is-pattern not-is-sugar and-intro and-is-sugar or-is-sugar notation-proof ) ABADCDCBDCCDCCCABABKCCABMABABKCABADCDCBDCCDCCAHBABKBADCDCBDCCDCBHABKAEBEGEADCDCBDCCDCABNADCDCBDCCDCAEBEGEAEBEGEADCDCBDCCDCAEBEGEAEBEGDCADCDCBDCCDCAEBEGLADCDCBDCCDCAEBEGDCADCDCBDCCDAEBEGDAEBEGADCDCBDCCAEBEGAEEBECADCDCBDCCAEBEOADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAELADCDCAEDCADCDAEDAEADCAEADCADCALADCADCADCHFIFDHJFIFBEBDCBEBDCBDCBLBDCBDCBDCHFIFJFIFDHJFIFFIJJP $.
${ rule-and-intro-sugar.0 $e |- ph0 $.
   rule-and-intro-sugar.1 $e |- ph1 $.
   rule-and-intro-sugar $p |- ( \and ph0 ph1 ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-transitivity not-is-sugar notation-reflexivity notation-imp and-is-pattern rule-and-intro and-is-sugar or-is-sugar notation-proof ) AFEFEBFEEFEABNABCDOABNAGBGIGAFEFEBFEEFEABPAFEFEBFEEFEAGBGIGAGBGIGAFEFEBFEEFEAGBGIGAGBGIFEAFEFEBFEEFEAGBGIKAFEFEBFEEFEAGBGIFEAFEFEBFEEFAGBGIFAGBGIAFEFEBFEEAGBGIAGGBGEAFEFEBFEEAGBGQAFEFEBFEEAGGBGEAFEFEBFEAGGBGAGGAFEFEAGGAGFEAFEFEAGKAFEFEAGFEAFEFAGFAGAFEAGAFEAFEAKAFEAFEAFELHJHFLMHJHBGBFEBGBFEBFEBKBFEBFEBFELHJHMHJHFLMHJHHJR $. $}
${ rule-and-intro-alt2-sugar.0 $e |- ( \imp ph0 ph1 ) $.
   rule-and-intro-alt2-sugar.1 $e |- ( \imp ph0 ph2 ) $.
   rule-and-intro-alt2-sugar $p |- ( \imp ph0 ( \and ph1 ph2 ) ) $= ( imp-is-pattern and-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 and-intro-sugar ) ACFABCGFACBCGFFACFABCGFFACBCGIABFACBCGFFABCBCGFFFABFACBCGFFFABCBCGFIBCBCGFFABCBCGFFFBCBCGFFAJBCKHHDHHEH $. $}
or-intro-left-sugar $p |- ( \imp ph0 ( \or ph0 ph1 ) ) $= ( imp-is-pattern bot-is-pattern not-is-pattern or-is-pattern notation-reflexivity notation-symmetry notation-transitivity notation-imp or-intro-left or-is-sugar not-is-sugar notation-proof ) AADCBCCAABFCABKAABFAADCBCAGABFAEBCADCBCABLADCBCAEBCADCBAEBAEADCAEADCADCAMADCADCADCGHIHBGJHIJN $.
or-intro-right-sugar $p |- ( \imp ph0 ( \or ph1 ph0 ) ) $= ( imp-is-pattern bot-is-pattern not-is-pattern or-is-pattern notation-reflexivity notation-symmetry notation-transitivity notation-imp proof-rule-prop-1 or-is-sugar not-is-sugar notation-proof ) ABDCACCABAFCABDCKABAFABDCACAGBAFBEACBDCACBALBDCACBEACBDCABEABEBDCBEBDCBDCBMBDCBDCBDCGHIHAGJHIJN $.
${ rule-or-elim-alt-sugar.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim-alt-sugar.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim-alt-sugar.2 $e |- ( \or ph0 ph1 ) $.
   rule-or-elim-alt-sugar $p |- ph2 $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-reflexivity notation-transitivity or-is-sugar not-is-sugar notation-imp notation-proof rule-or-elim-alt ) ABCDEABKAHGBGFABKAHGBGABKAIBGAHGBGABNAHGBGAIBGAHGBAIBAIAHGAIAHGAHGAOAHGAHGAHGLJMJBLPJMJQR $. $}
${ rule-or-elim-sugar.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim-sugar.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim-sugar $p |- ( \imp ( \or ph0 ph1 ) ph2 ) $= ( imp-is-pattern bot-is-pattern not-is-pattern or-is-pattern notation-reflexivity notation-symmetry notation-transitivity notation-imp rule-or-elim or-is-sugar not-is-sugar notation-proof ) AGFBFCFABICFABCDENABICAGFBFCABIAHBFAGFBFABOAGFBFAHBFAGFBAHBAHAGFAHAGFAGFAPAGFAGFAGFJKLKBJMKLCJMQ $. $}
or-elim-sugar $p |- ( \imp ( \imp ph0 ph2 ) ( \imp ( \imp ph1 ph2 ) ( \imp ( \or ph0 ph1 ) ph2 ) ) ) $= ( imp-is-pattern bot-is-pattern or-is-pattern notation-reflexivity not-is-pattern notation-imp notation-symmetry notation-transitivity or-elim or-is-sugar not-is-sugar notation-proof ) ACDBCDAEDBDCDDDACDBCDABFCDDDABCLACDBCDABFCDDACDBCDAEDBDCDDACDGBCDABFCDBCDAEDBDCDBCDGABFCAEDBDCABFAHBDAEDBDABMAEDBDAHBDAEDBAHBAHAEDAHAEDAEDANAEDAEDAEDGJKJBGIJKCGIIIO $.
${ rule-contradiction.0 $e |- ( \imp ( \not ph0 ) \bot ) $.
   rule-contradiction $p |- ph0 $= ( not-is-pattern bot-is-pattern imp-is-pattern contradiction proof-rule-mp ) ACDEAAFBG $. $}
${ rule-bot-elim.0 $e |- \bot $.
   rule-bot-elim $p |- ph0 $= ( bot-is-pattern bot-elim proof-rule-mp ) CAADBE $. $}
${ rule-not-elim-sugar.0 $e |- ph0 $.
   rule-not-elim-sugar.1 $e |- ( \not ph0 ) $.
   rule-not-elim-sugar $p |- \bot $= ( bot-is-pattern imp-is-pattern not-is-pattern proof-rule-mp notation-symmetry not-elim not-is-sugar notation-reflexivity notation-transitivity notation-proof ) ADEDAADEDEAIBGAFADECAFADEAFADEADEAJADEADEADEKHLHMG $. $}
${ rule-iff-intro.0 $e |- ( \imp ph0 ph1 ) $.
   rule-iff-intro.1 $e |- ( \imp ph1 ph0 ) $.
   rule-iff-intro $p |- ( \iff ph0 ph1 ) $= ( imp-is-pattern and-is-pattern iff-is-pattern rule-and-intro-sugar iff-is-sugar notation-reflexivity notation-symmetry notation-transitivity notation-proof ) ABEBAEFABGABEBAECDHABGABEBAEFABEBAEFABIABEBAEFABEBAEFABEBAEFJKLM $. $}
contrapositive-sugar $p |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \not ph1 ) ( \not ph0 ) ) ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-reflexivity not-is-sugar notation-symmetry notation-transitivity notation-imp contrapositive notation-proof ) ABCBDCADCCCABCBEAECCABKABCBEAECABCBDCADCCABCFBEAEBDCADCBEBDCBDCBGBDCBDCBDCFHIAEADCADCAGADCADCADCFHIJJL $.
${ rule-contrapositive-sugar.0 $e |- ( \imp ph0 ph1 ) $.
   rule-contrapositive-sugar $p |- ( \imp ( \not ph1 ) ( \not ph0 ) ) $= ( imp-is-pattern bot-is-pattern not-is-pattern not-is-sugar notation-reflexivity notation-symmetry notation-transitivity rule-contrapositive notation-imp notation-proof ) BEDAEDDBFAFDABCKBFAFBEDAEDBFBEDBEDBGBEDBEDBEDHIJAFAEDAEDAGAEDAEDAEDHIJLM $. $}
${ rule-contrapositive-alt-sugar.0 $e |- ( \imp ( \not ph0 ) ( \not ph1 ) ) $.
   rule-contrapositive-alt-sugar $p |- ( \imp ph1 ph0 ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry not-is-sugar notation-reflexivity notation-transitivity rule-imp-transitivity not-elim notation-imp notation-proof rule-contrapositive proof-rule-prop-3 ) BAEDEDABBEDEDAEDEDBLAEDBEDAFBFDAEDBEDDCAEDBEDAFBFAFAEDAFAEDAEDAHAEDAEDAEDIGJGBFBEDBFBEDBEDBHBEDBEDBEDIGJGMNOKAPK $. $}
excluded-middle $p |- ( \or ph0 ( \not ph0 ) ) $= ( not-is-pattern imp-is-pattern or-is-pattern imp-reflexivity or-is-sugar notation-reflexivity notation-symmetry notation-transitivity notation-proof ) ABABCAABDABEAABDABABCABABCAABFABABCABABCABABCGHIJ $.
case $p |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ( \not ph0 ) ph1 ) ph1 ) ) $= ( imp-is-pattern not-is-pattern or-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 imp-reflexivity or-elim-sugar excluded-middle ) ABCADBCAADECCABCADBCBCCABCADBCAADECADBCBCCCABCADBCAADECCABCADBCBCCCABCADBCAADECADBCBCGABCADBCAADEBCCCABCADBCAADECADBCBCCCABCADBCAADEBCCADBCAADECADBCBCCCCABCADBCAADEBCCCABCADBCAADECADBCBCCCCABCADBCAADEBCCADBCAADECADBCBCCGADBCAADEBCCADBCAADECADBCBCCCABCADBCAADEBCCADBCAADECADBCBCCCCADBCAADEBCCADBCAADECADBCBCCCABCHADBCAADEBGFFABCADBCADBCCCABCADBCAADEBCCCABCADBCADBCCADBCAADEBCCCCABCADBCADBCCCABCADBCAADEBCCCCABCADBCADBCCADBCAADEBCCGABCADBCADBCAADEBCCCCABCADBCADBCCADBCAADEBCCCCABCADBCADBCAADEBCCCADBCADBCCADBCAADEBCCCCCABCADBCADBCAADEBCCCCABCADBCADBCCADBCAADEBCCCCCABCADBCADBCAADEBCCCADBCADBCCADBCAADEBCCCGADBCADBCAADEBCCCADBCADBCCADBCAADEBCCCCABCADBCADBCAADEBCCCADBCADBCCADBCAADEBCCCCCADBCADBCAADEBCCCADBCADBCCADBCAADEBCCCCABCHADBCADBCAADEBCGFFABCADBCABCCCABCADBCADBCAADEBCCCCABCADBCABCCADBCADBCAADEBCCCCCABCADBCABCCCABCADBCADBCAADEBCCCCCABCADBCABCCADBCADBCAADEBCCCGABCADBCABCADBCAADEBCCCCCABCADBCABCCADBCADBCAADEBCCCCCABCADBCABCADBCAADEBCCCCADBCABCCADBCADBCAADEBCCCCCCABCADBCABCADBCAADEBCCCCCABCADBCABCCADBCADBCAADEBCCCCCCABCADBCABCADBCAADEBCCCCADBCABCCADBCADBCAADEBCCCCGADBCABCADBCAADEBCCCCADBCABCCADBCADBCAADEBCCCCCABCADBCABCADBCAADEBCCCCADBCABCCADBCADBCAADEBCCCCCCADBCABCADBCAADEBCCCCADBCABCCADBCADBCAADEBCCCCCABCHADBCABCADBCAADEBCCGFFABCABCADBCAADEBCCCCABCADBCABCADBCAADEBCCCCCABCABCADBCAADEBCCCADBCABCADBCAADEBCCCCCCABCABCADBCAADEBCCCCABCADBCABCADBCAADEBCCCCCCABCABCADBCAADEBCCCADBCABCADBCAADEBCCCCGABCADBCAADEBCCCADBCABCADBCAADEBCCCCCABCABCADBCAADEBCCCADBCABCADBCAADEBCCCCCCABCADBCAADEBCCCADBCABCADBCAADEBCCCCCABCHABCADBCAADEBCCCADBCHFFABCADBCAADEBCCCABCABCADBCAADEBCCCCABCADBCAADEBCCCABCHAADBJFFFFABCABCCABCADBCABCCCABCABCADBCABCCCCABCABCCABCADBCABCCCCABCABCADBCABCCGABCADBCABCCCABCABCADBCABCCCCABCADBCABCCCABCHABCADBCHFFABCIFFFFADBCADBCCABCADBCADBCCCADBCADBCCABCHADBCIFFFFABCAADECABCADBCAADECCABCAADEADBCAADECCCABCAADECABCADBCAADECCCABCAADEADBCAADECGAADEADBCAADECCABCAADEADBCAADECCCAADEADBCAADECCABCHAADEADBCHFFAADEABCAADECAADEABCHAKFFF $.
${ rule-case.0 $e |- ( \imp ph0 ph1 ) $.
   rule-case.1 $e |- ( \imp ( \not ph0 ) ph1 ) $.
   rule-case $p |- ph1 $= ( not-is-pattern imp-is-pattern or-is-pattern imp-reflexivity or-is-sugar notation-reflexivity notation-symmetry notation-transitivity notation-proof rule-or-elim-alt-sugar ) AAEBCDAEAEFAAEGAEHAAEGAEAEFAEAEFAAEIAEAEFAEAEFAEAEFJKLMN $. $}
${ rule-case-alt.0 $e |- ( \or ph0 ph1 ) $.
   rule-case-alt.1 $e |- ( \imp ph0 ph2 ) $.
   rule-case-alt.2 $e |- ( \imp ph1 ph2 ) $.
   rule-case-alt $p |- ph2 $= ( or-is-pattern rule-or-elim-sugar proof-rule-mp ) ABGCABCEFHDI $. $}
${ rule-imp-compat-in-or.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-compat-in-or.1 $e |- ( \imp ph2 ph3 ) $.
   rule-imp-compat-in-or $p |- ( \imp ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) $= ( or-is-pattern rule-imp-transitivity or-intro-left-sugar or-intro-right-sugar rule-or-elim-sugar ) ACBDGABBDGEBDIHCDBDGFDBJHK $. $}
${ rule-imp-compat-in-and.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-compat-in-and.1 $e |- ( \imp ph2 ph3 ) $.
   rule-imp-compat-in-and $p |- ( \imp ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) $= ( not-is-pattern or-is-pattern and-is-pattern rule-contrapositive-sugar imp-is-pattern and-is-sugar notation-reflexivity notation-symmetry notation-transitivity rule-imp-compat-in-or notation-imp notation-proof ) AGCGHGBGDGHGKACIBDIKBGDGHAGCGHBGAGDGCGABEJCDFJPJACIBDIAGCGHGBGDGHGACIAGCGHGAGCGHGACLAGCGHGAGCGHGAGCGHGMNOBDIBGDGHGBGDGHGBDLBGDGHGBGDGHGBGDGHGMNOQR $. $}
iff-elim-left $p |- ( \imp ( \iff ph0 ph1 ) ( \imp ph0 ph1 ) ) $= ( imp-is-pattern and-is-pattern iff-is-pattern notation-reflexivity and-elim-left-sugar iff-is-sugar notation-symmetry notation-transitivity notation-imp notation-proof ) ABCBACDABCCABEABCCABCBACGABEABCABCBACDABCABEABCBACDABCBACDABHABCBACDABCBACDABCBACDFIJABCFKL $.
iff-elim-right $p |- ( \imp ( \iff ph0 ph1 ) ( \imp ph1 ph0 ) ) $= ( imp-is-pattern and-is-pattern iff-is-pattern notation-reflexivity and-elim-right-sugar iff-is-sugar notation-symmetry notation-transitivity notation-imp notation-proof ) ABCBACDBACCABEBACCABCBACGABEBACABCBACDBACABEABCBACDABCBACDABHABCBACDABCBACDABCBACDFIJBACFKL $.
${ rule-iff-elim-left.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-elim-left $p |- ( \imp ph0 ph1 ) $= ( imp-is-pattern not-is-pattern or-is-pattern bot-is-pattern and-is-pattern notation-symmetry notation-transitivity iff-is-pattern and-is-sugar not-is-sugar and-elim-left-sugar iff-is-sugar notation-reflexivity notation-proof proof-rule-mp ) ABDBADHABDABDBADNABKABDBADHCABDBADHABDEBADEFEABKABDBADLABKABDEBADEFEABKABDBADHABDEBADEFEABOABDEBADEFEABDBADHABDEBADEFEABDEBADEFGDABDBADHABDEBADEFMABDBADHABDEBADEFGDABDBADHABDEBADEFEABDEBADEFGDABDBADLABDEBADEFGDABDEBADEFEABDEBADEFEABDEBADEFGDABDEBADEFEABDEBADEFGDABDEBADEFGDABDEBADEFMABDEBADEFGDABDEBADEFGDABDEBADEFGDPIJIIJIJIJIJQR $. $}
${ rule-iff-elim-right.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-elim-right $p |- ( \imp ph1 ph0 ) $= ( imp-is-pattern not-is-pattern or-is-pattern bot-is-pattern and-is-pattern notation-symmetry notation-transitivity iff-is-pattern and-is-sugar not-is-sugar and-elim-right-sugar iff-is-sugar notation-reflexivity notation-proof proof-rule-mp ) ABDBADHBADABDBADNABKABDBADHCABDBADHABDEBADEFEABKABDBADLABKABDEBADEFEABKABDBADHABDEBADEFEABOABDEBADEFEABDBADHABDEBADEFEABDEBADEFGDABDBADHABDEBADEFMABDBADHABDEBADEFGDABDBADHABDEBADEFEABDEBADEFGDABDBADLABDEBADEFGDABDEBADEFEABDEBADEFEABDEBADEFGDABDEBADEFEABDEBADEFGDABDEBADEFGDABDEBADEFMABDEBADEFGDABDEBADEFGDABDEBADEFGDPIJIIJIJIJIJQR $. $}
iff-reflexivity $p |- ( \iff ph0 ph0 ) $= ( imp-reflexivity rule-iff-intro ) AAABABC $.
${ rule-iff-symmetry.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-symmetry $p |- ( \iff ph1 ph0 ) $= ( rule-iff-elim-right rule-iff-elim-left rule-iff-intro ) BAABCDABCEF $. $}
${ rule-iff-transitivity.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-transitivity.1 $e |- ( \iff ph1 ph2 ) $.
   rule-iff-transitivity $p |- ( \iff ph0 ph2 ) $= ( rule-iff-elim-left rule-imp-transitivity rule-iff-elim-right rule-iff-intro ) ACABCABDFBCEFGCBABCEHABDHGI $. $}
${ rule-iff-compat-in-or.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-or.1 $e |- ( \iff ph2 ph3 ) $.
   rule-iff-compat-in-or $p |- ( \iff ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) $= ( or-is-pattern rule-iff-elim-left rule-imp-compat-in-or rule-iff-elim-right rule-iff-intro ) ACGBDGABCDABEHCDFHIBADCABEJCDFJIK $. $}
${ rule-iff-compat-in-and.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-and.1 $e |- ( \iff ph2 ph3 ) $.
   rule-iff-compat-in-and $p |- ( \iff ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) $= ( and-is-pattern rule-iff-elim-left rule-imp-compat-in-and rule-iff-elim-right rule-iff-intro ) ACGBDGABCDABEHCDFHIBADCABEJCDFJIK $. $}
${ rule-iff-compat-in-not.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-not $p |- ( \iff ( \not ph0 ) ( \not ph1 ) ) $= ( not-is-pattern rule-contrapositive-sugar rule-iff-elim-right rule-iff-elim-left rule-iff-intro ) ADBDBAABCFEABABCGEH $. $}
double-negation $p |- ( \iff ( \not ( \not ph0 ) ) ph0 ) $= ( imp-is-pattern not-is-pattern bot-is-pattern or-is-pattern notation-symmetry notation-transitivity not-is-sugar and-is-pattern notation-reflexivity notation-imp iff-is-pattern iff-is-sugar and-is-sugar or-is-sugar proof-rule-prop-3 not-elim rule-iff-intro notation-proof ) ADBDBALACCALADBDBAAPAQRACCALACCABAACCBIADBDBALACCAMADBDBALACCABAACCBIADBDBALADBDBABAADBDBBIACCABAACCBIADBDBAMACCABAACCBIADBDBABAADBDBBIACCABAACCBIACCABCAACCBCECADBDBABAADBDBBIACCABAACCBNADBDBABAADBDBBIACCABCAACCBCECADBDBABAADBDBBIADBDBABCAADBDBBCECACCABCAACCBCECADBDBABAADBDBBNACCABCAACCBCECADBDBABCAADBDBBCECACCABCAACCBCECACCABCAACCBCEDBADBDBABCAADBDBBCECACCABCAACCBCEHADBDBABCAADBDBBCECACCABCAACCBCEDBADBDBABCAADBDBBCECADBDBABCAADBDBBCEDBACCABCAACCBCEDBADBDBABCAADBDBBCEHACCABCAACCBCEDBADBDBABCAADBDBBCEDBACCABCAACCBCEDADBDBABCAADBDBBCEDACCABCAACCBCEACCABCCAACCBCBADBDBABCAADBDBBCEACCABCAACCBCOADBDBABCAADBDBBCEACCABCCAACCBCBADBDBABCAADBDBBCEADBDBABCCAADBDBBCBACCABCCAACCBCBADBDBABCAADBDBBCOACCABCCAACCBCBADBDBABCCAADBDBBCBACCABCCAACCBCADBDBABCCAADBDBBCACCABCCACCABCDBADBDBABCCACCABCHADBDBABCCACCABCDBADBDBABCCADBDBABCDBACCABCDBADBDBABCHACCABCDBADBDBABCDBACCABCDADBDBABCDACCABCACCABDBADBDBABCACCABHADBDBABCACCABDBADBDBABCADBDBABDBACCABDBADBDBABHACCABDBADBDBABDBACCABDADBDBABDACCAADBDBAACCACDBADBDBACHADBDBACDBADBDACDACADBACADBADBAHADBADBADBJFGFDJKFGAJKDJKFGFGDJKFGFGAACCBCAACCBDBAADBDBBCAACCBHAADBDBBCAACCBDBAADBDBBCAADBDBBDBAACCBDBAADBDBBHAACCBDBAADBDBBDBAACCBDAADBDBBDAACCAADBDBAJACCACDBADBDBACHADBDBACDBADBDACDACADBACADBADBAHADBADBADBJFGFDJKFGKDJKFGFGKFGFGDJKFGFGFGFGFGFGS $.
dn-intro-sugar $p |- ( \imp ph0 ( \not ( \not ph0 ) ) ) $= ( not-is-pattern double-negation rule-iff-elim-right ) ABBAACD $.
dn-elim-sugar $p |- ( \imp ( \not ( \not ph0 ) ) ph0 ) $= ( not-is-pattern double-negation rule-iff-elim-left ) ABBAACD $.
imp-to-or $p |- ( \iff ( \imp ph0 ph1 ) ( \or ( \not ph0 ) ph1 ) ) $= ( imp-is-pattern not-is-pattern bot-is-pattern notation-reflexivity notation-symmetry or-is-pattern notation-transitivity notation-imp not-is-sugar notation-proof imp-transitivity proof-rule-prop-3 proof-rule-mp or-is-sugar not-elim-alt proof-rule-prop-1 rule-or-elim-sugar rule-iff-intro ) ABCADBHABCADDBCCABCADBHCADDACABCADDBCCADDABMAECECACADDACANADDAAECECAADDADECAECECADKAECECADECAECEADEADAECADAECAECAKAECAECAECFGIGEFJGIAFJLOABCADBHABCADDBCABCFADBHADDBCADDBCADBPADDBCADDBCADDBCFGIJLADBABCAECABCCADABCCABQADABCAECABCADAECAECAKAECAECAECFGIABCFJLBARST $.
bot-to-and $p |- ( \iff \bot ( \and ph0 ( \not ph0 ) ) ) $= ( bot-is-pattern imp-is-pattern not-is-pattern or-is-pattern notation-symmetry notation-transitivity notation-reflexivity not-is-sugar notation-imp and-is-pattern or-is-sugar notation-proof bot-elim not-elim imp-reflexivity proof-rule-mp and-is-sugar rule-iff-intro ) BAADKAADKNADADDEDBCAADKBCABCABCBCEBCBCADADDEDBCABCABCBCEABCABCBCEBCBCABCABCBCEOABCBCABCBCCABCABCBCEABCBCPABCABCBCEABCDABCBCCABCBCABCBCCABCABCBCLABCBCABCBCCABCDABCBCCABCBCABCBCABCDABCBCABCDABCBCABCDABCBCABCBCABCIABCBCABCBCABCBCHFGFABCBCHJFGMQADADDEDBABCABCBCEBCBADADDEDADADDEBCABCABCBCEBCADADDEIABCABCBCEBCADADDEBCABCABCBCEBADADDEBABCABCBCEABCDABCBCCADADDEABCABCBCLADADDEABCDABCBCCADADDEADDADDCABCDABCBCCADADDLABCDABCBCCADDADDCABCDABCBCADDADDABCDABCBCADDABCIADDABCBCADDADBCABCBCADIABCBCADBCABCBADBADABCADABCABCAIABCABCABCHFGFBHJFGFGADDABCBCADDADBCABCBCADIABCBCADBCABCBADBADABCADABCABCAIABCABCABCHFGFBHJFGFJFGFGBHJFGBHJMAADKBADADDEDBAADKADADDEDADADDEDAADRADADDEDADADDEDADADDEDHFGBHJMS $.
top-to-or $p |- ( \iff \top ( \or ph0 ( \not ph0 ) ) ) $= ( not-is-pattern or-is-pattern imp-is-pattern top-is-pattern proof-rule-prop-1 proof-rule-mp imp-reflexivity or-is-sugar notation-reflexivity notation-symmetry notation-transitivity notation-proof top-intro rule-iff-intro ) EAABCAABCEAABCDAABCEFABABDAABCABHAABCABABDABABDAABIABABDABABDABABDJKLMGEAABCEDEAABCFNGO $.
iff-to-and $p |- ( \iff ( \iff ph0 ph1 ) ( \and ( \or ( \not ph0 ) ph1 ) ( \or ( \not ph1 ) ph0 ) ) ) $= ( not-is-pattern imp-is-pattern or-is-pattern and-is-pattern iff-is-pattern bot-is-pattern notation-symmetry notation-transitivity not-is-sugar notation-reflexivity notation-imp iff-is-sugar imp-to-or and-is-sugar or-is-sugar rule-iff-compat-in-and notation-proof ) ABDBADFACBEBCAEFGABGACBEBCAEFGABDACBEBADBCAEABOBAORABGACBEBCAEFGABGACBEBCAEFDACBEBCAEFABGDFABDBADFACBEBCAEFGABGACBEBCAEFNABDBADFACBEBCAEFGABGACBEBCAEFDACBEBCAEFABGDFABDBADFACBEBCAEFGABDBADFACBEBCAEFDACBEBCAEFABDBADFDFABGACBEBCAEFDACBEBCAEFABGDFABDBADFACBEBCAEFNABGACBEBCAEFDACBEBCAEFABGDFABDBADFACBEBCAEFDACBEBCAEFABDBADFDFABGACBEBCAEFDACBEBCAEFABGDFABGACBEBCAEFDCACBEBCAEFABGDCECABDBADFACBEBCAEFDACBEBCAEFABDBADFDFABGACBEBCAEFDACBEBCAEFABGDPABDBADFACBEBCAEFDACBEBCAEFABDBADFDFABGACBEBCAEFDCACBEBCAEFABGDCECABDBADFACBEBCAEFDACBEBCAEFABDBADFDFABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCECABGACBEBCAEFDCACBEBCAEFABGDCECABDBADFACBEBCAEFDACBEBCAEFABDBADFDPABGACBEBCAEFDCACBEBCAEFABGDCECABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCECABGACBEBCAEFDCACBEBCAEFABGDCECABGACBEBCAEFDCACBEBCAEFABGDCEHDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCECABGACBEBCAEFDCACBEBCAEFABGDCEKABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCECABGACBEBCAEFDCACBEBCAEFABGDCEHDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCECABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEHDABGACBEBCAEFDCACBEBCAEFABGDCEHDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEKABGACBEBCAEFDCACBEBCAEFABGDCEHDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEHDABGACBEBCAEFDCACBEBCAEFABGDCEHABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEHABGACBEBCAEFDCACBEBCAEFABGDCEABGACBEBCAEFDCCACBEBCAEFABGDCDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEABGACBEBCAEFDCACBEBCAEFABGDCQABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEABGACBEBCAEFDCCACBEBCAEFABGDCDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCEABDBADFACBEBCAEFDCCACBEBCAEFABDBADFDCDABGACBEBCAEFDCCACBEBCAEFABGDCDABDBADFACBEBCAEFDCACBEBCAEFABDBADFDCQABGACBEBCAEFDCCACBEBCAEFABGDCDABDBADFACBEBCAEFDCCACBEBCAEFABDBADFDCDABGACBEBCAEFDCCACBEBCAEFABGDCABDBADFACBEBCAEFDCCACBEBCAEFABDBADFDCABGACBEBCAEFDCCABGACBEBCAEFDCHDABDBADFACBEBCAEFDCCABGACBEBCAEFDCKABDBADFACBEBCAEFDCCABGACBEBCAEFDCHDABDBADFACBEBCAEFDCCABDBADFACBEBCAEFDCHDABGACBEBCAEFDCHDABDBADFACBEBCAEFDCKABGACBEBCAEFDCHDABDBADFACBEBCAEFDCHDABGACBEBCAEFDCHABDBADFACBEBCAEFDCHABGACBEBCAEFDCABGACBEBCAEFDHDABDBADFACBEBCAEFDCABGACBEBCAEFDKABDBADFACBEBCAEFDCABGACBEBCAEFDHDABDBADFACBEBCAEFDCABDBADFACBEBCAEFDHDABGACBEBCAEFDHDABDBADFACBEBCAEFDKABGACBEBCAEFDHDABDBADFACBEBCAEFDHDABGACBEBCAEFDHABDBADFACBEBCAEFDHABGACBEBCAEFABDBADFACBEBCAEFABGABDBADFABDBADFABNABDBADFABDBADFABDBADFLIJACBEBCAEFLMHLMIJIJHLMIJIJACBEBCAEFABGDCACBEBCAEFABGDHDACBEBCAEFABDBADFDCACBEBCAEFABGDKACBEBCAEFABDBADFDCACBEBCAEFABGDHDACBEBCAEFABDBADFDCACBEBCAEFABDBADFDHDACBEBCAEFABGDHDACBEBCAEFABDBADFDKACBEBCAEFABGDHDACBEBCAEFABDBADFDHDACBEBCAEFABGDHACBEBCAEFABDBADFDHACBEBCAEFABGACBEBCAEFABDBADFACBEBCAEFLABGABDBADFABDBADFABNABDBADFABDBADFABDBADFLIJMHLMIJIJMIJIJHLMIJIJIJIJIJIJS $.
and-associativity $p |- ( \iff ( \and ( \and ph0 ph1 ) ph2 ) ( \and ph0 ( \and ph1 ph2 ) ) ) $= ( and-is-pattern and-elim-left-sugar rule-imp-transitivity and-elim-right-sugar rule-and-intro-alt2-sugar imp-reflexivity rule-iff-intro ) ABDCDABCDDABDCDABCDABDCDABDAABDCEABEFABDCDBCABDCDABDBABDCEABGFABDCDCCABDCGCIFHHABCDDABDCABCDDABABCDEABCDDBCDBABCDGBCEFHABCDDBCDCABCDGBCGFHJ $.
and-commutativity $p |- ( \iff ( \and ph0 ph1 ) ( \and ph1 ph0 ) ) $= ( and-is-pattern and-elim-right-sugar and-elim-left-sugar rule-and-intro-alt2-sugar rule-iff-intro ) ABCBACABCBAABDABEFBACABBADBAEFG $.
or-associativity $p |- ( \iff ( \or ( \or ph0 ph1 ) ph2 ) ( \or ph0 ( \or ph1 ph2 ) ) ) $= ( or-is-pattern or-intro-left-sugar or-intro-right-sugar rule-imp-transitivity rule-or-elim-sugar rule-iff-intro ) ABDCDABCDDABDCABCDDABABCDDABCDEBBCDABCDDBCEBCDAFGHCBCDABCDDCBFBCDAFGHABCDABDCDAABDABDCDABEABDCEGBCABDCDBABDABDCDBAFABDCEGCABDFHHI $.
or-commutativity $p |- ( \iff ( \or ph0 ph1 ) ( \or ph1 ph0 ) ) $= ( or-is-pattern or-intro-right-sugar or-intro-left-sugar rule-or-elim-sugar rule-iff-intro ) ABCBACABBACABDBAEFBAABCBADABEFG $.
de-morgan-and $p |- ( \iff ( \not ( \and ph0 ph1 ) ) ( \or ( \not ph0 ) ( \not ph1 ) ) ) $= ( imp-is-pattern bot-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-transitivity and-is-pattern not-is-sugar notation-reflexivity notation-imp or-is-sugar and-is-sugar notation-proof proof-rule-prop-3 not-elim rule-iff-intro ) ABIEAEBEGADCDCBDCCDCDCADCDCBDCCCABIEAEBEGCADCDCBDCCPABIEAEBEGADCDCBDCCDCDCADCDCBDCCABIEABIDCADCDCBDCCDCDCABIJADCDCBDCCDCDCABIDCADCDCBDCCDCDABIDABIADCDCBDCCDCABIAEBEGEADCDCBDCCDCABNADCDCBDCCDCAEBEGEAEBEGEADCDCBDCCDCAEBEGEAEBEGDCADCDCBDCCDCAEBEGJADCDCBDCCDCAEBEGDCADCDCBDCCDAEBEGDAEBEGADCDCBDCCAEBEGAEEBECADCDCBDCCAEBEMADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAEJADCDCAEDCADCDAEDAEADCAEADCADCAJADCADCADCKFHFDKLFHFBEBDCBEBDCBDCBJBDCBDCBDCKFHFLFHFDKLFHFFHFDKLFHAEBEGAEEBECADCDCBDCCAEBEMADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAEJADCDCAEDCADCDAEDAEADCAEADCADCAJADCADCADCKFHFDKLFHFBEBDCBEBDCBDCBJBDCBDCBDCKFHFLFHLOADCDCBDCCADCDCBDCCDCDCCAEBEGABIECADCDCBDCCQAEBEGABIEADCDCBDCCADCDCBDCCDCDCAEBEGAEEBECADCDCBDCCAEBEMADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAEJADCDCAEDCADCDAEDAEADCAEADCADCAJADCADCADCKFHFDKLFHFBEBDCBEBDCBDCBJBDCBDCBDCKFHFLFHABIEABIDCADCDCBDCCDCDCABIJADCDCBDCCDCDCABIDCADCDCBDCCDCDABIDABIADCDCBDCCDCABIAEBEGEADCDCBDCCDCABNADCDCBDCCDCAEBEGEAEBEGEADCDCBDCCDCAEBEGEAEBEGDCADCDCBDCCDCAEBEGJADCDCBDCCDCAEBEGDCADCDCBDCCDAEBEGDAEBEGADCDCBDCCAEBEGAEEBECADCDCBDCCAEBEMADCDCBDCCAEEBECADCDCBDCAEEBEAEEADCDCAEEAEDCADCDCAEJADCDCAEDCADCDAEDAEADCAEADCADCAJADCADCADCKFHFDKLFHFBEBDCBEBDCBDCBJBDCBDCBDCKFHFLFHFDKLFHFFHFDKLFHLOR $.
de-morgan-or $p |- ( \iff ( \not ( \or ph0 ph1 ) ) ( \and ( \not ph0 ) ( \not ph1 ) ) ) $= ( not-is-pattern or-is-pattern imp-is-pattern and-is-pattern bot-is-pattern notation-symmetry notation-transitivity not-is-sugar notation-reflexivity notation-imp iff-is-pattern and-is-sugar double-negation rule-iff-symmetry iff-is-sugar or-is-sugar rule-iff-compat-in-or rule-iff-compat-in-not notation-proof ) ABDCACCBCCDCMABDCACBCFMABDACCBCCDAACCBBCCACCAAOPBCCBBOPSTABDCACBCFMABDCACBCFEACBCFABDCEFABDCACCBCCDCMABDCACBCFQABDCACCBCCDCMABDCACBCFEACBCFABDCEFABDCACCBCCDCMABDCACCBCCDCEACCBCCDCABDCEFABDCACBCFEACBCFABDCEFABDCACCBCCDCQABDCACBCFEACBCFABDCEFABDCACCBCCDCEACCBCCDCABDCEFABDCACBCFEACBCFABDCEFABDCACBCFECACBCFABDCECDCABDCACCBCCDCEACCBCCDCABDCEFABDCACBCFEACBCFABDCENABDCACCBCCDCEACCBCCDCABDCEFABDCACBCFECACBCFABDCECDCABDCACCBCCDCEACCBCCDCABDCEFABDCACCBCCDCECACCBCCDCABDCECDCABDCACBCFECACBCFABDCECDCABDCACCBCCDCEACCBCCDCABDCENABDCACBCFECACBCFABDCECDCABDCACCBCCDCECACCBCCDCABDCECDCABDCACBCFECACBCFABDCECDCABDCACBCFECACBCFABDCECDGEABDCACCBCCDCECACCBCCDCABDCECDCABDCACBCFECACBCFABDCECDJABDCACCBCCDCECACCBCCDCABDCECDCABDCACBCFECACBCFABDCECDGEABDCACCBCCDCECACCBCCDCABDCECDCABDCACCBCCDCECACCBCCDCABDCECDGEABDCACBCFECACBCFABDCECDGEABDCACCBCCDCECACCBCCDCABDCECDJABDCACBCFECACBCFABDCECDGEABDCACCBCCDCECACCBCCDCABDCECDGEABDCACBCFECACBCFABDCECDGABDCACCBCCDCECACCBCCDCABDCECDGABDCACBCFECACBCFABDCECDABDCACBCFECCACBCFABDCECEABDCACCBCCDCECACCBCCDCABDCECDABDCACBCFECACBCFABDCECRABDCACCBCCDCECACCBCCDCABDCECDABDCACBCFECCACBCFABDCECEABDCACCBCCDCECACCBCCDCABDCECDABDCACCBCCDCECCACCBCCDCABDCECEABDCACBCFECCACBCFABDCECEABDCACCBCCDCECACCBCCDCABDCECRABDCACBCFECCACBCFABDCECEABDCACCBCCDCECCACCBCCDCABDCECEABDCACBCFECCACBCFABDCECABDCACCBCCDCECCACCBCCDCABDCECABDCACBCFECCABDCACBCFECGEABDCACCBCCDCECCABDCACBCFECJABDCACCBCCDCECCABDCACBCFECGEABDCACCBCCDCECCABDCACCBCCDCECGEABDCACBCFECGEABDCACCBCCDCECJABDCACBCFECGEABDCACCBCCDCECGEABDCACBCFECGABDCACCBCCDCECGABDCACBCFECABDCACBCFEGEABDCACCBCCDCECABDCACBCFEJABDCACCBCCDCECABDCACBCFEGEABDCACCBCCDCECABDCACCBCCDCEGEABDCACBCFEGEABDCACCBCCDCEJABDCACBCFEGEABDCACCBCCDCEGEABDCACBCFEGABDCACCBCCDCEGABDCACBCFABDCACCBCCDCABDCKACBCFACCBCCDCACCBCCDCACBCNACCBCCDCACCBCCDCACCBCCDCKHILGKLHIHIGKLHIHIACBCFABDCECACBCFABDCEGEACCBCCDCABDCECACBCFABDCEJACCBCCDCABDCECACBCFABDCEGEACCBCCDCABDCECACCBCCDCABDCEGEACBCFABDCEGEACCBCCDCABDCEJACBCFABDCEGEACCBCCDCABDCEGEACBCFABDCEGACCBCCDCABDCEGACBCFABDCACCBCCDCABDCACBCFACCBCCDCACCBCCDCACBCNACCBCCDCACCBCCDCACCBCCDCKHIABDCKLGKLHIHILHIHIGKLHIHIHIHIHIHIUA $.
or-idempotency $p |- ( \iff ( \or ph0 ph0 ) ph0 ) $= ( imp-reflexivity or-is-pattern rule-or-elim-sugar or-intro-left-sugar rule-iff-intro ) AACAAAAABABDAAEF $.
and-idempotency $p |- ( \iff ( \and ph0 ph0 ) ph0 ) $= ( imp-is-pattern and-is-pattern proof-rule-mp and-elim-left-sugar proof-rule-prop-2 and-intro-sugar imp-reflexivity rule-iff-intro ) AACAAAEAABAAACBAAAACBBAABAAACBBAAAACFAAGDAHDI $.
or-complement $p |- ( \iff ( \or ( \not ph0 ) ph0 ) \top ) $= ( imp-is-pattern bot-is-pattern not-is-pattern or-is-pattern top-is-pattern notation-symmetry notation-reflexivity notation-transitivity proof-rule-prop-1 proof-rule-mp not-is-sugar notation-imp top-intro proof-rule-prop-3 or-is-sugar notation-proof rule-iff-intro ) ADAEFFADAEFBFADAEJNKADAEFADAEBADAEFJACBCBABADAEAOADAEADDABACBCBABADAPACBCBABADDABACBCBAADDAADDACBCBADDADCBACBCBADLACBCBADCBACBCADCADACBADACBACBALACBACBACBHGIGCHMGIGAHMGIQKR $.
and-top $p |- ( \iff ( \and \top ph0 ) ph0 ) $= ( top-is-pattern and-is-pattern and-elim-right-sugar imp-is-pattern and-intro-sugar top-intro proof-rule-mp rule-iff-intro ) BACABADBABACEBAFGHI $.
or-top $p |- ( \iff ( \or \top ph0 ) \top ) $= ( top-is-pattern or-is-pattern imp-reflexivity imp-is-pattern proof-rule-prop-1 top-intro proof-rule-mp rule-or-elim-sugar or-intro-left-sugar rule-iff-intro ) BACBBABBDBABEBAFGHIBAJK $.
and-bot $p |- ( \imp ( \and \bot ph0 ) \bot ) $= ( bot-is-pattern imp-is-pattern not-is-pattern notation-symmetry or-is-pattern notation-transitivity notation-reflexivity not-is-sugar notation-imp and-is-pattern and-elim-left and-is-sugar or-is-sugar notation-proof ) BBCBCABCCBCBCBAKBCBALBAKBBBCBCABCCBCBBAKBDADFDBBCBCABCCBCBAMBBCBCABCCBCBDADFDBDADFDBBCBCABCCBCBDADFDBDADFBCBBCBCABCCBCBDADFIBBCBCABCCBCBDADFBCBBCBCABCCBBDADFBBDADFBBCBCABCCBDADFBDDADCBBCBCABCCBDADNBBCBCABCCBDDADCBBCBCABCBDDADBDDBBCBCBDDBDBCBBCBCBDIBBCBCBDBCBBCBBDBBDBBCBDBBCBBCBIBBCBBCBBCHEGEBHJEGEADABCADABCABCAIABCABCABCHEGEJEGEBHJEGEEGBHJO $.
or-commutativity-alt $p |- ( \imp ( \imp ( \not ph0 ) ph1 ) ( \imp ( \not ph1 ) ph0 ) ) $= ( imp-is-pattern not-is-pattern or-is-pattern notation-symmetry or-is-sugar notation-reflexivity notation-transitivity or-commutativity rule-iff-elim-left notation-imp notation-proof ) ABEBAECADBCBDACCABEBAEABJKADBCBDACABEBAEABEADBCABEADBCADBCABGADBCADBCADBCHFIFBAEBDACBAEBDACBDACBAGBDACBDACBDACHFIFLM $.
or-to-imp-alt $p |- ( \imp ( \or ph0 ph1 ) ( \imp ( \not ph0 ) ph1 ) ) $= ( imp-is-pattern not-is-pattern or-is-pattern notation-reflexivity imp-reflexivity or-is-sugar notation-symmetry notation-transitivity notation-imp notation-proof ) ADBCADBCCABEADBCCADBCGABEADBCADBCADBCABEADBCADBCABHADBCADBCADBCFIJADBCFKL $.
${ rule-or-left-distributivity-right.0 $e |- ( \and ( \or ph0 ph2 ) ( \or ph1 ph2 ) ) $.
   rule-or-left-distributivity-right $p |- ( \or ( \and ph0 ph1 ) ph2 ) $= ( imp-is-pattern and-is-pattern not-is-pattern or-is-pattern proof-rule-mp proof-rule-prop-2 or-commutativity-alt or-to-imp-alt case or-intro-right-sugar imp-transitivity proof-rule-prop-1 and-intro-sugar and-elim-left-sugar and-elim-right-sugar or-intro-left-sugar ) CGABFCHEABFCHCABFCHECGABFCHEABFCHECABFCHMCABFNIABFABFCHECGABFCHECGABFEABFABFCHECGABFCHEECGABFABFCHOCGBECGABFECGBABFEECGBECGABFEECGBABFJCGAECGBABFEECGABABFEEECGAECGBABFEEECGABABFEJABABFEECGABABFEEEABABFEECGPABQIIAGCECGAEACKACHAGCEACLACHBCHFACHACHBCHRDIIIIIBGCECGBEBCKBCHBGCEBCLACHBCHFBCHACHBCHSDIIIIIABFCTII $. $}
or-left-distributivity-right $p |- ( \imp ( \and ( \or ph0 ph2 ) ( \or ph1 ph2 ) ) ( \or ( \and ph0 ph1 ) ph2 ) ) $= ( imp-is-pattern or-is-pattern and-is-pattern not-is-pattern proof-rule-mp proof-rule-prop-2 proof-rule-prop-1 or-commutativity-alt or-to-imp-alt imp-reflexivity case or-intro-right-sugar imp-transitivity and-intro-sugar and-elim-left-sugar and-elim-right-sugar or-intro-left-sugar ) ACEBCEFCGABFCEDDACEBCEFABFCEDACEBCEFCGABFCEDABFCEDDACEBCEFCGABFCEDDACEBCEFABFCEDDACEBCEFCGABFCEDABFCEIACEBCEFCABFCEDDACEBCEFCGABFCEDABFCEDDACEBCEFCABFCEDCGABFCEDABFCEDDDACEBCEFCABFCEDDACEBCEFCGABFCEDABFCEDDDACEBCEFCABFCEDCGABFCEDABFCEDICABFCEDCGABFCEDABFCEDDACEBCEFCABFCEDCGABFCEDABFCEDDDCABFCEDCGABFCEDABFCEDDACEBCEFJCABFCENHHCABFCEDACEBCEFCABFCEDDCABFCEDACEBCEFJCABFOHHHACEBCEFABFABFCEDDACEBCEFCGABFCEDDACEBCEFABFABFCEDCGABFCEDDDACEBCEFABFABFCEDDACEBCEFCGABFCEDDDACEBCEFABFABFCEDCGABFCEDIACEBCEFCGABFDDACEBCEFABFABFCEDCGABFCEDDDACEBCEFCGABFDABFABFCEDCGABFCEDDDDACEBCEFCGABFDDACEBCEFABFABFCEDCGABFCEDDDDACEBCEFCGABFDABFABFCEDCGABFCEDDICGABFDABFABFCEDCGABFCEDDDACEBCEFCGABFDABFABFCEDCGABFCEDDDDCGABFDABFABFCEDCGABFCEDDDACEBCEFJCGABFABFCEPHHACEBCEFCGBDDACEBCEFCGABFDDACEBCEFCGBDCGABFDDDACEBCEFCGBDDACEBCEFCGABFDDDACEBCEFCGBDCGABFDIACEBCEFCGBABFDDDACEBCEFCGBDCGABFDDDACEBCEFCGBABFDDCGBDCGABFDDDDACEBCEFCGBABFDDDACEBCEFCGBDCGABFDDDDACEBCEFCGBABFDDCGBDCGABFDDICGBABFDDCGBDCGABFDDDACEBCEFCGBABFDDCGBDCGABFDDDDCGBABFDDCGBDCGABFDDDACEBCEFJCGBABFIHHACEBCEFCGADDACEBCEFCGBABFDDDACEBCEFCGADCGBABFDDDDACEBCEFCGADDACEBCEFCGBABFDDDDACEBCEFCGADCGBABFDDIACEBCEFCGABABFDDDDACEBCEFCGADCGBABFDDDDACEBCEFCGABABFDDDCGADCGBABFDDDDDACEBCEFCGABABFDDDDACEBCEFCGADCGBABFDDDDDACEBCEFCGABABFDDDCGADCGBABFDDDICGABABFDDDCGADCGBABFDDDDACEBCEFCGABABFDDDCGADCGBABFDDDDDCGABABFDDDCGADCGBABFDDDDACEBCEFJCGABABFDIHHACEBCEFABABFDDDACEBCEFCGABABFDDDDACEBCEFABABFDDCGABABFDDDDDACEBCEFABABFDDDACEBCEFCGABABFDDDDDACEBCEFABABFDDCGABABFDDDIABABFDDCGABABFDDDDACEBCEFABABFDDCGABABFDDDDDABABFDDCGABABFDDDDACEBCEFJABABFDDCGJHHABABFDDACEBCEFABABFDDDABABFDDACEBCEFJABQHHHHACEBCEFAGCDDACEBCEFCGADDACEBCEFAGCDCGADDDACEBCEFAGCDDACEBCEFCGADDDACEBCEFAGCDCGADIAGCDCGADDACEBCEFAGCDCGADDDAGCDCGADDACEBCEFJACKHHACEBCEFACEDACEBCEFAGCDDACEBCEFACEAGCDDDACEBCEFACEDACEBCEFAGCDDDACEBCEFACEAGCDIACEAGCDDACEBCEFACEAGCDDDACEAGCDDACEBCEFJACLHHACEBCEFACEBCEFDACEBCEFACEDACEBCEFACEBCEFACEDDACEBCEFACEBCEFDACEBCEFACEDDACEBCEFACEBCEFACEIACEBCEFACEDACEBCEFACEBCEFACEDDACEBCEFACEDACEBCEFJACEBCERHHACEBCEFMHHHHHHACEBCEFBGCDDACEBCEFCGBDDACEBCEFBGCDCGBDDDACEBCEFBGCDDACEBCEFCGBDDDACEBCEFBGCDCGBDIBGCDCGBDDACEBCEFBGCDCGBDDDBGCDCGBDDACEBCEFJBCKHHACEBCEFBCEDACEBCEFBGCDDACEBCEFBCEBGCDDDACEBCEFBCEDACEBCEFBGCDDDACEBCEFBCEBGCDIBCEBGCDDACEBCEFBCEBGCDDDBCEBGCDDACEBCEFJBCLHHACEBCEFACEBCEFDACEBCEFBCEDACEBCEFACEBCEFBCEDDACEBCEFACEBCEFDACEBCEFBCEDDACEBCEFACEBCEFBCEIACEBCEFBCEDACEBCEFACEBCEFBCEDDACEBCEFBCEDACEBCEFJACEBCESHHACEBCEFMHHHHHHABFABFCEDACEBCEFABFABFCEDDABFABFCEDACEBCEFJABFCTHHH $.
or-left-distributivity $p |- ( \iff ( \or ( \and ph0 ph1 ) ph2 ) ( \and ( \or ph0 ph2 ) ( \or ph1 ph2 ) ) ) $= ( or-is-pattern and-is-pattern or-intro-left-sugar rule-imp-transitivity rule-and-intro-alt2-sugar or-intro-right-sugar and-elim-left-sugar and-elim-right-sugar rule-or-elim-sugar or-left-distributivity-right rule-iff-intro ) ABECDACDBCDEABECACDBCDEABEACDBCDABEAACDABJACFGABEBBCDABKBCFGHCACDBCDCAICBIHLABCMN $.
or-right-distributivity $p |- ( \iff ( \or ph0 ( \and ph1 ph2 ) ) ( \and ( \or ph0 ph1 ) ( \or ph0 ph2 ) ) ) $= ( or-is-pattern and-is-pattern rule-iff-elim-left or-commutativity rule-imp-transitivity or-left-distributivity rule-imp-compat-in-and rule-iff-elim-right rule-iff-intro ) ABCEDABDACDEABCEDBCEADABDACDEABCEDBCEADABCEGFBCEADBADCADEABDACDEBCEADBADCADEBCAIFBADABDCADACDBADABDBAGFCADACDCAGFJHHABDACDEBCEADABCEDABDACDEBADCADEBCEADABDBADACDCADABDBADABGFACDCADACGFJBCEADBADCADEBCAIKHBCEADABCEDBCEAGFHL $.
and-left-distributivity $p |- ( \iff ( \and ( \or ph0 ph1 ) ph2 ) ( \or ( \and ph0 ph2 ) ( \and ph1 ph2 ) ) ) $= ( not-is-pattern and-is-pattern or-is-pattern rule-imp-transitivity rule-iff-elim-left de-morgan-and rule-iff-elim-right de-morgan-or rule-imp-compat-in-and or-left-distributivity imp-reflexivity rule-imp-compat-in-or rule-contrapositive-alt-sugar rule-iff-intro ) ABFCEACEBCEFACEBCEFABFCEACEBCEFDADCDFBDCDFEABFCEDACEBCEFDACEDBCEDEADCDFBDCDFEACEBCEFDACEDBCEDEACEBCEKHACEDADCDFBCEDBDCDFACEDADCDFACIHBCEDBDCDFBCIHLGADCDFBDCDFEADBDECDFABFCEDADBDECDFADCDFBDCDFEADBDCDMJADBDECDFABFDCDFABFCEDADBDEABFDCDCDABFDADBDEABKJCDNOABFCEDABFDCDFABFCIJGGGPABFCEACEBCEFABFCEDADBDECDFACEBCEFDABFCEDABFDCDFADBDECDFABFCEDABFDCDFABFCIHABFDADBDECDCDABFDADBDEABKHCDNOGADBDECDFACEDBCEDEACEBCEFDADBDECDFADCDFBDCDFEACEDBCEDEADBDECDFADCDFBDCDFEADBDCDMHADCDFACEDBDCDFBCEDACEDADCDFACIJBCEDBDCDFBCIJLGACEBCEFDACEDBCEDEACEBCEKJGGPQ $.
resolution-1 $p |- ( \imp ( \and ( \not ph0 ) ph0 ) \bot ) $= ( not-is-pattern and-is-pattern bot-is-pattern and-commutativity rule-iff-elim-left bot-to-and rule-iff-elim-right rule-imp-transitivity ) ABACAABCDABACAABCABAEFDAABCAGHI $.
resolution-2 $p |- ( \imp ( \and ( \or ( \not ph0 ) ph1 ) ph0 ) ph1 ) $= ( not-is-pattern imp-is-pattern or-is-pattern bot-is-pattern and-is-pattern notation-symmetry notation-transitivity notation-reflexivity not-is-sugar notation-imp proof-rule-mp or-is-sugar notation-proof and-is-sugar proof-rule-prop-2 and-elim-left-sugar imp-transitivity not-elim rule-imp-transitivity and-elim-right-sugar ) ACCBDAGBDACBEAGBDACCBDAGADACCBDAGBDACCBDAGABDDACCBDAGADACCBDAGBDDACCBDAGABQACCBDAGACCBDABDACCBDARAACCDACCBDABDDAACCBSAAFDFDDAACCDATAACCAAFDFDAJACCACFDAFDFDACKAFDFDACFDAFDFACFACAFDACAFDAFDAKAFDAFDAFDJHIHFJLHILOMUAMACCBDAUBMACBEAGBACCBDAGBACBEAGACBECACECACCBDAGACBEAPACCBDAGACBECACECACCBDAGACCBDCACECACBECACECACCBDAPACBECACECACCBDCACECACBECACECACBECACEFDACCBDCACECACBECACEKACCBDCACECACBECACEFDACCBDCACECACCBDCACEFDACBECACEFDACCBDCACEKACBECACEFDACCBDCACEFDACBECACEFACCBDCACEFACBECACEACBECCACDACCBDCACEACBECACNACCBDCACEACBECCACDACCBDCACEACCBDCCACDACBECCACDACCBDCACNACBECCACDACCBDCCACDACBECCACACCBDCCACACBECCACBECFDACCBDCCACBECKACCBDCCACBECFDACCBDCCACCBDCFDACBECFDACCBDCKACBECFDACCBDCFDACBECFACCBDCFACBECACBEFDACCBDCACBEKACCBDCACBEFDACCBDCACCBDFDACBEFDACCBDKACBEFDACCBDFDACBEFACCBDFACBEACCBDACCBDACBNACCBDACCBDACCBDJHIFJLHIHIFJLHIHIACJLHIHIFJLHIHIHIHIBJLO $.
resolution-3 $p |- ( \imp ( \and ( \not ph0 ) ( \or ph0 ph1 ) ) ph1 ) $= ( not-is-pattern imp-is-pattern or-is-pattern bot-is-pattern and-is-pattern notation-symmetry notation-transitivity notation-reflexivity not-is-sugar notation-imp or-is-sugar proof-rule-mp and-is-sugar proof-rule-prop-2 and-elim-right-sugar and-elim-left-sugar notation-proof ) ACACBDGBDACABEGBDACACBDGACDACACBDGBDACACBDGACBDDACACBDGACDACACBDGBDDACACBDGACBPACACBDQNACACBDRNACABEGBACACBDGBACABEGACCABECECACACBDGACABEOACACBDGACCABECECACACBDGACCACBDCECACCABECECACACBDOACCABECECACCACBDCECACCABECECACCABECEFDACCACBDCECACCABECEKACCACBDCECACCABECEFDACCACBDCECACCACBDCEFDACCABECEFDACCACBDCEKACCABECEFDACCACBDCEFDACCABECEFACCACBDCEFACCABECEACCCABECDACCACBDCEACCABECMACCACBDCEACCCABECDACCACBDCEACCCACBDCDACCCABECDACCACBDCMACCCABECDACCCACBDCDACCCABECACCCACBDCACCCJABECABEFDACBDCABEKACBDCABEFDACBDCACBDFDABEFDACBDKABEFDACBDFDABEFACBDFABEACBDACBDABMACBDACBDACBDJHIFJLHIHILHIHIFJLHIHIHIHIBJLS $.
resolution-4 $p |- ( \imp ( \and ( \or ( \not ph0 ) ph1 ) ( \or ph0 ph2 ) ) ( \or ph1 ph2 ) ) $= ( or-is-pattern and-is-pattern not-is-pattern rule-imp-transitivity and-left-distributivity rule-iff-elim-left resolution-3 or-intro-right-sugar and-elim-left-sugar or-intro-left-sugar rule-or-elim-sugar ) AFBDACDEAFACDEBACDEDBCDAFBDACDEAFACDEBACDEDAFBACDHIAFACDEBACDEBCDAFACDECBCDACJCBKGBACDEBBCDBACDLBCMGNG $.
${ premises-switch.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   premises-switch $p |- ( \imp ph1 ( \imp ph0 ph2 ) ) $= ( not-is-pattern and-is-pattern or-is-pattern iff-reflexivity rule-iff-transitivity imp-is-pattern rule-iff-compat-in-and and-associativity rule-iff-symmetry rule-iff-compat-in-not rule-iff-compat-in-or and-commutativity rule-imp-transitivity rule-iff-elim-left bot-is-pattern imp-to-or de-morgan-or double-negation and-idempotency and-elim-left-sugar rule-imp-compat-in-and resolution-2 proof-rule-mp contradiction resolution-1 and-bot ) ABCJJBACJJABCJJBACJJJESJABCJJBACJJJABCJJBACJJJUHABCJJBACJJJECEABAEBECGGFFFSABCJJBACJJJECEABAEBECGGFFFABCJJBACJJJEAEBECGGBACEFFFCEABAEBECGGFFFABCJJBACJJJEAEBECGGEBEAECGGGEAEBECGGBACEFFFABCJJBACJJJAEBECGGEBEAECGGGABCJJBACJJJABCJJEBACJJGAEBECGGEBEAECGGGABCJJBACJJTABCJJEAEBECGGEBACJJBEAECGGABCJJAEBECGGABCJJAEBCJGAEBECGGABCJTAEAEBCJBECGAAAHNBCJBECGBECGBCTBEBECCBBBHNCHOIOINBACJJBEACJGBEAECGGBACJTBEBEACJAECGBBBHNACJAECGAECGACTAEAECCAAAHNCHOIOIOINAEBECGGEBEAECGGGEAEBECGGEEBEAECGGEFAEBECGGBACEFFFAEBECGGEBEAECGGUAAEBECGGEEBEAECGGEFAEBECGGBACEFFFAEBECGGBACEFFFAEBECGGEEAEBECGGBEAECGGEBACEFFAEBECGGEEAEBECGGAEBECGGAEBECGGUBAEBECGGAEBECGGAEBECGGAEAEBECGBECGAAAHNBEBECCBBBHNCHOOAEAEBECGBECGAAAHNBEBECCBBBHNCHOOIIBEAECGGEBEEAECGEFBACEFFBEAECGUABEEAECGEFBACEFFBACEFFBEEBAECGEACEFBEEBBBUBBHIAECGEAEECEFACEFAECUAAEECEFACEFACEFAEEACECEAEEAAAUBAHICEHKACEFHIIKBACEFFHIIKAEBECGGBACEFFFHIIIAEBECGGBACEFFFAEBECGGBACEFFFCEABAEBECGGFFFAEBECGGBACEFFFHAEBECGGBACEFFFBAEBECGGACEFFFCEABAEBECGGFFFAEBECGGBACEFFFBAEBECGGACEFFFBAEBECGGACEFFFAEBECGGBACEFFFBAEBECGGFACEFFBAEBECGGACEFFFAEBECGGBACEFFFAEBECGGBFACEFFBAEBECGGFACEFFAEBECGGBACEFFFAEBECGGBACEFFFAEBECGGBFACEFFAEBECGGBACEFFFHAEBECGGBFACEFFAEBECGGBACEFFFAEBECGGBACEFLMIAEBECGGBFBAEBECGGFACEFACEFAEBECGGBPACEFHKIBAEBECGGACEFLIBBAEBECGGACEFFAEBECGGACEFFBHAEBECGGACEFFHKIBAEBECGGACEFFFABAEBECGGCEFFFCEABAEBECGGFFFBAEBECGGACEFFFABAEBECGGCEFFFABAEBECGGCEFFFBAEBECGGACEFFFABFAEBECGGCEFFABAEBECGGCEFFFBAEBECGGACEFFFBAFAEBECGGCEFFABFAEBECGGCEFFBAEBECGGACEFFFBAAEBECGGCEFFFBAFAEBECGGCEFFBBAEBECGGACEFFAAEBECGGCEFFBHAEBECGGACEFFAAEBECGGFCEFAAEBECGGCEFFAEBECGGACEFFAEBECGGAFCEFAAEBECGGFCEFAEBECGGACEFFAEBECGGACEFFAEBECGGAFCEFAEBECGGACEFFHAEBECGGAFCEFAEBECGGACEFFAEBECGGACELMIAEBECGGAFAAEBECGGFCECEAEBECGGAPCEHKIAAEBECGGCELIKBAFAEBECGGCEFFBAAEBECGGCEFFFBAAEBECGGCEFLMIBAFABFAEBECGGCEFAEBECGGCEFBAPAEBECGGCEFHKIABAEBECGGCEFLIAABAEBECGGCEFFBAEBECGGCEFFAHBAEBECGGCEFFHKIABAEBECGGCEFFFCEABAEBECGGFFFCEABAEBECGGFFFABAEBECGGCEFFFCEABAEBECGGFFFCEABAEBECGGFFFABAEBECGGCEFFFCEAFBAEBECGGFFCEABAEBECGGFFFABAEBECGGCEFFFACEFBAEBECGGFFCEAFBAEBECGGFFABAEBECGGCEFFFACEBAEBECGGFFFACEFBAEBECGGFFAABAEBECGGCEFFCEBAEBECGGFFAHBAEBECGGCEFFCEBFAEBECGGFCEBAEBECGGFFBAEBECGGCEFFBCEFAEBECGGFCEBFAEBECGGFBAEBECGGCEFFBCEAEBECGGFFBCEFAEBECGGFBBAEBECGGCEFCEAEBECGGFBHAEBECGGCEPKBCEFAEBECGGFBCEAEBECGGFFBCEAEBECGGLMIBCEFCEBFAEBECGGAEBECGGBCEPAEAEBECGBECGAAAHNBEBECCBBBHNCHOOKICEBAEBECGGLIKACEFBAEBECGGFFACEBAEBECGGFFFACEBAEBECGGFLMIACEFCEAFBAEBECGGFBAEBECGGFACEPBAEBECGGFHKICEABAEBECGGFLICECEABAEBECGGFFABAEBECGGFFCEHABAEBECGGFFHKICECEABAEBECGGFFABAEBECGGFFCEHABAEBECGGFFHKIIIIIRCEABAEBECGGFFFCBECGCEABAEBECGGFFFFFSCEABAEBECGGFFFBECGCEABAEBECGGFFFFCBECGCEABAEBECGGFFFFFCEABAEBECGGFFFCEABAEBECGGFFFCEABAEBECGGFFFFBECGCEABAEBECGGFFFFCEABAEBECGGFFFCEABAEBECGGFFFCEABAEBECGGFFFFCEABAEBECGGFFFCEABAEBECGGFFFFCEABAEBECGGFFFCEABAEBECGGFFFUCMRCEABAEBECGGFFFBECGCEABAEBECGGFFFCEABAEBECGGFFFCEABAEBECGGFFFAEBECGGAFCEBFFBECGCEABAEBECGGFFFAEBECGGAFCEBFFCEABAEBECGGFFFAEBECGGACEBFFFAEBECGGAFCEBFFCEABAEBECGGFFFAEBECGGACEBFFFAEBECGGACEBFFFCEABAEBECGGFFFACEBAEBECGGFFFAEBECGGACEBFFFCEABAEBECGGFFFACEBAEBECGGFFFACEBAEBECGGFFFCEABAEBECGGFFFACEFBAEBECGGFFACEBAEBECGGFFFCEABAEBECGGFFFCEAFBAEBECGGFFACEFBAEBECGGFFCEABAEBECGGFFFCEABAEBECGGFFFCEAFBAEBECGGFFCECEABAEBECGGFFABAEBECGGFFCEHABAEBECGGFFHKCEAFBAEBECGGFFCEABAEBECGGFFFCEABAEBECGGFLMICEAFACEFBAEBECGGFBAEBECGGFCEAPBAEBECGGFHKIACEBAEBECGGFLIAACEBAEBECGGFFCEBAEBECGGFFAHCEBAEBECGGFFHKIACEBAEBECGGFFFAEBECGGAFCEBFFAEBECGGACEBFFFACEBAEBECGGFFFAAEBECGGFCEBFFAEBECGGAFCEBFFACEBAEBECGGFFFAAEBECGGCEBFFFAAEBECGGFCEBFFAACEBAEBECGGFFAEBECGGCEBFFAHCEBAEBECGGFFAEBECGGCEFBFAEBECGGCEBFFCEBAEBECGGFFCEAEBECGGFBFAEBECGGCEFBFCEBAEBECGGFFCEAEBECGGBFFCEAEBECGGFBFCECEBAEBECGGFAEBECGGBFCEHBAEBECGGPKCEAEBECGGFBFCEAEBECGGBFFCEAEBECGGBLMICEAEBECGGFAEBECGGCEFBBCEAEBECGGPBHKIAEBECGGCEBLIKAAEBECGGFCEBFFAAEBECGGCEBFFFAAEBECGGCEBFLMIAAEBECGGFAEBECGGAFCEBFCEBFAAEBECGGPCEBFHKIAEBECGGACEBFLIIAEBECGGAEBECGGACEBFFACEBFFAEAEBECGBECGAAAHNBEBECCBBBHNCHOOACEBFFHKIAEBECGGAFCEBFFAEBECGGACEBFFFAEBECGGACEBFLMIRAEBECGGAFCEBFFAEBECGGAFBECGAEBECGGAFCEBFUDAEBECGGAFBECGBECGABECGUFBECGBECGBEBECCBBBHNCHORQQQCEABAEBECGGFFFCEABAEBECGGFFFCECEABAEBECGGFFABAEBECGGFFCEHABAEBECGGFFHKRUEQBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFUCMRBECGCEABAEBECGGFFFFCBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGBFCEAAEBECGGFFFCBECGCEABAEBECGGFFFFBECGBFCEAAEBECGGFFFBECGCEABAEBECGGFFFFBECGBCEAAEBECGGFFFFBECGBFCEAAEBECGGFFFBECGCEABAEBECGGFFFFBECGBCEAAEBECGGFFFFBECGBCEAAEBECGGFFFFBECGCEABAEBECGGFFFFBBECGCEAAEBECGGFFFFBECGBCEAAEBECGGFFFFBECGCEABAEBECGGFFFFBBECGCEAAEBECGGFFFFBBECGCEAAEBECGGFFFFBECGCEABAEBECGGFFFFBBECGFCEAAEBECGGFFFBBECGCEAAEBECGGFFFFBECGCEABAEBECGGFFFFBECGBFCEAAEBECGGFFFBBECGFCEAAEBECGGFFFBECGCEABAEBECGGFFFFBECGBCEAAEBECGGFFFFBECGBFCEAAEBECGGFFFBECGBECGCEABAEBECGGFFFBCEAAEBECGGFFFBEBECCBBBHNCHOCEABAEBECGGFFFBCEFAAEBECGGFFBCEAAEBECGGFFFCEABAEBECGGFFFCEBFAAEBECGGFFBCEFAAEBECGGFFCEABAEBECGGFFFCEBAAEBECGGFFFCEBFAAEBECGGFFCECEABAEBECGGFFBAAEBECGGFFCEHABAEBECGGFFBAFAEBECGGFBAAEBECGGFFABAEBECGGFFABFAEBECGGFBAFAEBECGGFABAEBECGGFFABAEBECGGFFABFAEBECGGFABAEBECGGFFHABFAEBECGGFABAEBECGGFFABAEBECGGLMIABFBAFAEBECGGAEBECGGABPAEAEBECGBECGAAAHNBEBECCBBBHNCHOOKIBAAEBECGGLIKCEBFAAEBECGGFFCEBAAEBECGGFFFCEBAAEBECGGFLMICEBFBCEFAAEBECGGFAAEBECGGFCEBPAAEBECGGFHKIBCEAAEBECGGFLIKBECGBFCEAAEBECGGFFFBECGBCEAAEBECGGFFFFBECGBCEAAEBECGGFFLMIBECGBFBBECGFCEAAEBECGGFFCEAAEBECGGFFBECGBPCEAAEBECGGFFHKIBBECGCEAAEBECGGFFLIBBBECGCEAAEBECGGFFFBECGCEAAEBECGGFFFBHBECGCEAAEBECGGFFFHKIBBECGCEAAEBECGGFFFFBECGBFCEAAEBECGGFFFBECGBCEAAEBECGGFFFFBBECGCEAAEBECGGFFFFBBECGFCEAAEBECGGFFFBECGBFCEAAEBECGGFFFBBECGCEAAEBECGGFFFFBBECGCEAAEBECGGFFFFBBECGFCEAAEBECGGFFFBBBECGCEAAEBECGGFFFBECGCEAAEBECGGFFFBHBECGCEAAEBECGGFFFHKBBECGFCEAAEBECGGFFFBBECGCEAAEBECGGFFFFBBECGCEAAEBECGGFFLMIBBECGFBECGBFCEAAEBECGGFFCEAAEBECGGFFBBECGPCEAAEBECGGFFHKIBECGBCEAAEBECGGFFLIIBECGBECGBCEAAEBECGGFFFBCEAAEBECGGFFFBEBECCBBBHNCHOBCEAAEBECGGFFFHKIBECGBFCEAAEBECGGFFFBECGBCEAAEBECGGFFFFBECGBCEAAEBECGGFFLMIRBECGBFCEAAEBECGGFFFBECGBFCBECGBFCEAAEBECGGFFUDBECGBFCCBCUFCCCHRQQQBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFHRUEQQCBECGCEABAEBECGGFFFFFSCBECGCEABAEBECGGFFFFFFSCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFFSCBECGCEABAEBECGGFFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFUCMRCBECGCEABAEBECGGFFFFFSCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCECFBECGABAEBECGGFFFFSCBECGCEABAEBECGGFFFFFCECFBECGABAEBECGGFFFFCBECGCEABAEBECGGFFFFFCECBECGABAEBECGGFFFFFCECFBECGABAEBECGGFFFFCBECGCEABAEBECGGFFFFFCECBECGABAEBECGGFFFFFCECBECGABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCECBECGABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFHCBECGCEABAEBECGGFFFFFHICBECGCEABAEBECGGFFFFFCECFBECGABAEBECGGFFFFCECBECGABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCCEFBECGABAEBECGGFFFFCECFBECGABAEBECGGFFFFCBECGCEABAEBECGGFFFFFCCEBECGABAEBECGGFFFFFCCEFBECGABAEBECGGFFFFCCBECGCEABAEBECGGFFFFCEBECGABAEBECGGFFFFCHBECGCEABAEBECGGFFFFCEBECGFABAEBECGGFFFCEBECGABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGCEFABAEBECGGFFFCEBECGFABAEBECGGFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFFFBECGCEFABAEBECGGFFFBECGCEABAEBECGGFFFFHBECGCEFABAEBECGGFFFBECGCEABAEBECGGFFFFBECGCEABAEBECGGFFLMIBECGCEFCEBECGFABAEBECGGFFABAEBECGGFFBECGCEPABAEBECGGFFHKICEBECGABAEBECGGFFLIKCCEFBECGABAEBECGGFFFFCCEBECGABAEBECGGFFFFFCCEBECGABAEBECGGFFFLMICCEFCECFBECGABAEBECGGFFFBECGABAEBECGGFFFCCEPBECGABAEBECGGFFFHKICECBECGABAEBECGGFFFLIICECECBECGABAEBECGGFFFFCBECGABAEBECGGFFFFCEHCBECGABAEBECGGFFFFHKICECFBECGABAEBECGGFFFFCECBECGABAEBECGGFFFFFCECBECGABAEBECGGFFFLMIRCECFBECGABAEBECGGFFFFCECFSCECFBECGABAEBECGGFFFUDCUIQQCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFCBECGCEABAEBECGGFFFFFHRUEQCBECGCEABAEBECGGFFFFFUJQQQUGDUG $. $}
premises-switch-alt $p |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ph1 ( \imp ph0 ph2 ) ) ) $= ( not-is-pattern and-is-pattern or-is-pattern rule-iff-transitivity iff-reflexivity imp-is-pattern rule-iff-compat-in-and and-associativity rule-iff-symmetry rule-iff-compat-in-not and-commutativity rule-iff-compat-in-or rule-imp-transitivity rule-iff-elim-left bot-is-pattern imp-to-or de-morgan-or double-negation and-idempotency or-commutativity and-elim-left-sugar rule-imp-compat-in-and or-associativity contradiction resolution-3 resolution-2 resolution-1 and-bot proof-rule-mp ) ABCIIBACIIIDRIABCIIBACIIIABCIIBACIIIUGABCIIBACIIIDCDABADBDCFFEEERABCIIBACIIIDCDABADBDCFFEEEABCIIBACIIIDADBDCFFBACDEEECDABADBDCFFEEEABCIIBACIIIDADBDCFFDBDADCFFFDADBDCFFBACDEEEABCIIBACIIIADBDCFFDBDADCFFFABCIIBACIIIABCIIDBACIIFADBDCFFDBDADCFFFABCIIBACIISABCIIDADBDCFFDBACIIBDADCFFABCIIADBDCFFABCIIADBCIFADBDCFFABCISADADBCIBDCFAAAHMBCIBDCFBDCFBCSBDBDCCBBBHMCHOGOGMBACIIBDACIFBDADCFFBACISBDBDACIADCFBBBHMACIADCFADCFACSADADCCAAAHMCHOGOGOGMADBDCFFDBDADCFFFDADBDCFFDDBDADCFFDEADBDCFFBACDEEEADBDCFFDBDADCFFTADBDCFFDDBDADCFFDEADBDCFFBACDEEEADBDCFFBACDEEEADBDCFFDDADBDCFFBDADCFFDBACDEEADBDCFFDDADBDCFFADBDCFFADBDCFFUAADBDCFFADBDCFFADBDCFFADADBDCFBDCFAAAHMBDBDCCBBBHMCHOOADADBDCFBDCFAAAHMBDBDCCBBBHMCHOOGGBDADCFFDBDDADCFDEBACDEEBDADCFTBDDADCFDEBACDEEBACDEEBDDBADCFDACDEBDDBBBUABHGADCFDADDCDEACDEADCTADDCDEACDEACDEADDACDCDADDAAAUAAHGCDHJACDEHGGJBACDEEHGGJADBDCFFBACDEEEHGGGADBDCFFBACDEEEADBDCFFBACDEEECDABADBDCFFEEEADBDCFFBACDEEEHADBDCFFBACDEEEBADBDCFFACDEEECDABADBDCFFEEEADBDCFFBACDEEEBADBDCFFACDEEEBADBDCFFACDEEEADBDCFFBACDEEEBADBDCFFEACDEEBADBDCFFACDEEEADBDCFFBACDEEEADBDCFFBEACDEEBADBDCFFEACDEEADBDCFFBACDEEEADBDCFFBACDEEEADBDCFFBEACDEEADBDCFFBACDEEEHADBDCFFBEACDEEADBDCFFBACDEEEADBDCFFBACDEKLGADBDCFFBEBADBDCFFEACDEACDEADBDCFFBNACDEHJGBADBDCFFACDEKGBBADBDCFFACDEEADBDCFFACDEEBHADBDCFFACDEEHJGBADBDCFFACDEEEABADBDCFFCDEEECDABADBDCFFEEEBADBDCFFACDEEEABADBDCFFCDEEEABADBDCFFCDEEEBADBDCFFACDEEEABEADBDCFFCDEEABADBDCFFCDEEEBADBDCFFACDEEEBAEADBDCFFCDEEABEADBDCFFCDEEBADBDCFFACDEEEBAADBDCFFCDEEEBAEADBDCFFCDEEBBADBDCFFACDEEAADBDCFFCDEEBHADBDCFFACDEEAADBDCFFECDEAADBDCFFCDEEADBDCFFACDEEADBDCFFAECDEAADBDCFFECDEADBDCFFACDEEADBDCFFACDEEADBDCFFAECDEADBDCFFACDEEHADBDCFFAECDEADBDCFFACDEEADBDCFFACDKLGADBDCFFAEAADBDCFFECDCDADBDCFFANCDHJGAADBDCFFCDKGJBAEADBDCFFCDEEBAADBDCFFCDEEEBAADBDCFFCDEKLGBAEABEADBDCFFCDEADBDCFFCDEBANADBDCFFCDEHJGABADBDCFFCDEKGAABADBDCFFCDEEBADBDCFFCDEEAHBADBDCFFCDEEHJGABADBDCFFCDEEECDABADBDCFFEEECDABADBDCFFEEEABADBDCFFCDEEECDABADBDCFFEEECDABADBDCFFEEEABADBDCFFCDEEECDAEBADBDCFFEECDABADBDCFFEEEABADBDCFFCDEEEACDEBADBDCFFEECDAEBADBDCFFEEABADBDCFFCDEEEACDBADBDCFFEEEACDEBADBDCFFEEAABADBDCFFCDEECDBADBDCFFEEAHBADBDCFFCDEECDBEADBDCFFECDBADBDCFFEEBADBDCFFCDEEBCDEADBDCFFECDBEADBDCFFEBADBDCFFCDEEBCDADBDCFFEEBCDEADBDCFFEBBADBDCFFCDECDADBDCFFEBHADBDCFFCDNJBCDEADBDCFFEBCDADBDCFFEEBCDADBDCFFKLGBCDECDBEADBDCFFADBDCFFBCDNADADBDCFBDCFAAAHMBDBDCCBBBHMCHOOJGCDBADBDCFFKGJACDEBADBDCFFEEACDBADBDCFFEEEACDBADBDCFFEKLGACDECDAEBADBDCFFEBADBDCFFEACDNBADBDCFFEHJGCDABADBDCFFEKGCDCDABADBDCFFEEABADBDCFFEECDHABADBDCFFEEHJGCDCDABADBDCFFEEABADBDCFFEECDHABADBDCFFEEHJGGGGGQCDABADBDCFFEEEADADBDFCDABADBDCFFEEEEERCDABADBDCFFEEEADBDFCDABADBDCFFEEEEADADBDFCDABADBDCFFEEEEECDABADBDCFFEEECDABADBDCFFEEECDABADBDCFFEEEEADBDFCDABADBDCFFEEEECDABADBDCFFEEECDABADBDCFFEEECDABADBDCFFEEEECDABADBDCFFEEECDABADBDCFFEEEECDABADBDCFFEEECDABADBDCFFEEEUBLQCDABADBDCFFEEEADBDFCDABADBDCFFEEECDABADBDCFFEEECDABADBDCFFEEECDCADBDFFEABEEADBDFCDABADBDCFFEEECDCADBDFFEABEECDABADBDCFFEEECDCADBDFFABEEECDCADBDFFEABEECDABADBDCFFEEECDCADBDFFABEEECDCADBDFFABEEECDABADBDCFFEEECADBDFFCDABEEECDCADBDFFABEEECDABADBDCFFEEEADBDCFFCDABEEECADBDFFCDABEEECDABADBDCFFEEEADBDCFFCDEABEEADBDCFFCDABEEECDABADBDCFFEEECDADBDCFFEABEEADBDCFFCDEABEECDABADBDCFFEEECDADBDCFFABEEECDADBDCFFEABEECDCDABADBDCFFEEADBDCFFABEECDHABADBDCFFEEADBDCFFAEBEADBDCFFABEEABADBDCFFEEAADBDCFFEBEADBDCFFAEBEABADBDCFFEEAADBDCFFBEEAADBDCFFEBEAABADBDCFFEADBDCFFBEAHBADBDCFFNJAADBDCFFEBEAADBDCFFBEEAADBDCFFBKLGAADBDCFFEADBDCFFAEBBAADBDCFFNBHJGADBDCFFABKGJCDADBDCFFEABEECDADBDCFFABEEECDADBDCFFABEKLGCDADBDCFFEADBDCFFCDEABEABECDADBDCFFNABEHJGADBDCFFCDABEKGADBDCFFCADBDFFCDABEECDABEEADBDCFFCADFBDFCADBDFFADBDCFFADCFBDFCADFBDFADBDCFFADCBDFFADCFBDFADADBDCFCBDFAAAHMBDCUCOADCFBDFADCBDFFADCBDUFLGADCFCADFBDBDADCUCBBBHMOGCADBDUFGCDABEEHJGCADBDFFCDABEEECDCADBDFFEABEECDCADBDFFABEEECADBDFFCDABEEECADBDFFCDEABEECDCADBDFFEABEECADBDFFCDABEEECADBDFFCDABEEECADBDFFCDEABEECADBDFFCADBDFFCDABEECDABEECADBDFFHCDABEEHJCADBDFFCDEABEECADBDFFCDABEEECADBDFFCDABEKLGCADBDFFCDECDCADBDFFEABEABECADBDFFCDNABEHJGCDCADBDFFABEKGGCDCDCADBDFFABEECADBDFFABEECDHCADBDFFABEEHJGCDCADBDFFEABEECDCADBDFFABEEECDCADBDFFABEKLGQCDCADBDFFEABEECDCADBDFFEADBDFCDCADBDFFEABEUDCDCADBDFFEADBDFADBDFCADBDFUHADBDFADBDFADBDFHQPPPCDABADBDCFFEEECDABADBDCFFEEECDCDABADBDCFFEEABADBDCFFEECDHABADBDCFFEEHJQUEPADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEUBLQADBDFCDABADBDCFFEEEEADADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEBDADFBECDAADBDCFFEEEADADBDFCDABADBDCFFEEEEBDADFBECDAADBDCFFEEEADBDFCDABADBDCFFEEEEBDADFBCDAADBDCFFEEEEBDADFBECDAADBDCFFEEEADBDFCDABADBDCFFEEEEADBDFBCDAADBDCFFEEEEBDADFBCDAADBDCFFEEEEADBDFCDABADBDCFFEEEEBADBDFCDAADBDCFFEEEEADBDFBCDAADBDCFFEEEEADBDFCDABADBDCFFEEEEBADBDFCDAADBDCFFEEEEBADBDFCDAADBDCFFEEEEADBDFCDABADBDCFFEEEEBADBDFECDAADBDCFFEEEBADBDFCDAADBDCFFEEEEADBDFCDABADBDCFFEEEEADBDFBECDAADBDCFFEEEBADBDFECDAADBDCFFEEEADBDFCDABADBDCFFEEEEADBDFBCDAADBDCFFEEEEADBDFBECDAADBDCFFEEEADBDFADBDFCDABADBDCFFEEEBCDAADBDCFFEEEADBDFHCDABADBDCFFEEEBCDEAADBDCFFEEBCDAADBDCFFEEECDABADBDCFFEEECDBEAADBDCFFEEBCDEAADBDCFFEECDABADBDCFFEEECDBAADBDCFFEEECDBEAADBDCFFEECDCDABADBDCFFEEBAADBDCFFEECDHABADBDCFFEEBAEADBDCFFEBAADBDCFFEEABADBDCFFEEABEADBDCFFEBAEADBDCFFEABADBDCFFEEABADBDCFFEEABEADBDCFFEABADBDCFFEEHABEADBDCFFEABADBDCFFEEABADBDCFFKLGABEBAEADBDCFFADBDCFFABNADADBDCFBDCFAAAHMBDBDCCBBBHMCHOOJGBAADBDCFFKGJCDBEAADBDCFFEECDBAADBDCFFEEECDBAADBDCFFEKLGCDBEBCDEAADBDCFFEAADBDCFFECDBNAADBDCFFEHJGBCDAADBDCFFEKGJADBDFBECDAADBDCFFEEEADBDFBCDAADBDCFFEEEEADBDFBCDAADBDCFFEEKLGADBDFBEBADBDFECDAADBDCFFEECDAADBDCFFEEADBDFBNCDAADBDCFFEEHJGBADBDFCDAADBDCFFEEKGBBADBDFCDAADBDCFFEEEADBDFCDAADBDCFFEEEBHADBDFCDAADBDCFFEEEHJGBADBDFCDAADBDCFFEEEEADBDFBECDAADBDCFFEEEADBDFBCDAADBDCFFEEEEBADBDFCDAADBDCFFEEEEBADBDFECDAADBDCFFEEEADBDFBECDAADBDCFFEEEBADBDFCDAADBDCFFEEEEBADBDFCDAADBDCFFEEEEBADBDFECDAADBDCFFEEEBBADBDFCDAADBDCFFEEEADBDFCDAADBDCFFEEEBHADBDFCDAADBDCFFEEEHJBADBDFECDAADBDCFFEEEBADBDFCDAADBDCFFEEEEBADBDFCDAADBDCFFEEKLGBADBDFEADBDFBECDAADBDCFFEECDAADBDCFFEEBADBDFNCDAADBDCFFEEHJGADBDFBCDAADBDCFFEEKGGADBDFBDADFBCDAADBDCFFEEEBCDAADBDCFFEEEADBDUCBCDAADBDCFFEEEHJGBDADFBECDAADBDCFFEEEBDADFBCDAADBDCFFEEEEBDADFBCDAADBDCFFEEKLGQBDADFBECDAADBDCFFEEEBDADFBEADBDADFBECDAADBDCFFEEUDBDADFBEADADBADUIADADAAAHMQPPPADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEADBDFCDABADBDCFFEEEEHQUEPPADADBDFCDABADBDCFFEEEEERADADBDFCDABADBDCFFEEEEEERADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEERADADBDFCDABADBDCFFEEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEUBLQADADBDFCDABADBDCFFEEEEERADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADAEADBDFCDBADBDCFFEEEERADADBDFCDABADBDCFFEEEEEADAEADBDFCDBADBDCFFEEEEADADBDFCDABADBDCFFEEEEEADAADBDFCDBADBDCFFEEEEEADAEADBDFCDBADBDCFFEEEEADADBDFCDABADBDCFFEEEEEADAADBDFCDBADBDCFFEEEEEADAADBDFCDBADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEAADADBDFCDBADBDCFFEEEEEADAADBDFCDBADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEAADADBDFCDBADBDCFFEEEEEAADADBDFCDBADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEAADEADBDFCDBADBDCFFEEEEAADADBDFCDBADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADAEADBDFCDBADBDCFFEEEEAADEADBDFCDBADBDCFFEEEEADADBDFCDABADBDCFFEEEEEADAADBDFCDBADBDCFFEEEEEADAEADBDFCDBADBDCFFEEEEADADADBDFCDABADBDCFFEEEEAADBDFCDBADBDCFFEEEEAAAHMADBDFCDABADBDCFFEEEEAADBDFECDBADBDCFFEEEAADBDFCDBADBDCFFEEEEADBDFCDABADBDCFFEEEEADBDFAECDBADBDCFFEEEAADBDFECDBADBDCFFEEEADBDFCDABADBDCFFEEEEADBDFACDBADBDCFFEEEEADBDFAECDBADBDCFFEEEADBDFADBDFCDABADBDCFFEEEACDBADBDCFFEEEADBDFHCDABADBDCFFEEEACDEBADBDCFFEEACDBADBDCFFEEECDABADBDCFFEEECDAEBADBDCFFEEACDEBADBDCFFEECDABADBDCFFEEECDABADBDCFFEEECDAEBADBDCFFEECDCDABADBDCFFEEABADBDCFFEECDHABADBDCFFEEHJCDAEBADBDCFFEECDABADBDCFFEEECDABADBDCFFEKLGCDAEACDEBADBDCFFEBADBDCFFECDANBADBDCFFEHJGACDBADBDCFFEKGJADBDFAECDBADBDCFFEEEADBDFACDBADBDCFFEEEEADBDFACDBADBDCFFEEKLGADBDFAEAADBDFECDBADBDCFFEECDBADBDCFFEEADBDFANCDBADBDCFFEEHJGAADBDFCDBADBDCFFEEKGJADAEADBDFCDBADBDCFFEEEEADAADBDFCDBADBDCFFEEEEEADAADBDFCDBADBDCFFEEEKLGADAEAADEADBDFCDBADBDCFFEEEADBDFCDBADBDCFFEEEADANADBDFCDBADBDCFFEEEHJGAADADBDFCDBADBDCFFEEEKGAAADADBDFCDBADBDCFFEEEEADADBDFCDBADBDCFFEEEEAHADADBDFCDBADBDCFFEEEEHJGAADADBDFCDBADBDCFFEEEEEADAEADBDFCDBADBDCFFEEEEADAADBDFCDBADBDCFFEEEEEAADADBDFCDBADBDCFFEEEEEAADEADBDFCDBADBDCFFEEEEADAEADBDFCDBADBDCFFEEEEAADADBDFCDBADBDCFFEEEEEAADADBDFCDBADBDCFFEEEEEAADEADBDFCDBADBDCFFEEEEAAADADBDFCDBADBDCFFEEEEADADBDFCDBADBDCFFEEEEAHADADBDFCDBADBDCFFEEEEHJAADEADBDFCDBADBDCFFEEEEAADADBDFCDBADBDCFFEEEEEAADADBDFCDBADBDCFFEEEKLGAADEADAEADBDFCDBADBDCFFEEEADBDFCDBADBDCFFEEEAADNADBDFCDBADBDCFFEEEHJGADAADBDFCDBADBDCFFEEEKGGADADAADBDFCDBADBDCFFEEEEAADBDFCDBADBDCFFEEEEAAAHMAADBDFCDBADBDCFFEEEEHJGADAEADBDFCDBADBDCFFEEEEADAADBDFCDBADBDCFFEEEEEADAADBDFCDBADBDCFFEEEKLGQADAEADBDFCDBADBDCFFEEEEADAERADAEADBDFCDBADBDCFFEEEUDAUJPPADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEADADBDFCDABADBDCFFEEEEEHQUEPADADBDFCDABADBDCFFEEEEEUKPPPUL $.
${ $d xX ph0 $.
   substitution-disjoint $p #Substitution ph0 ph0 ph1 xX $= ( fresh-disjoint substitution-fresh ) ABCACDE $. $}
substitution-top $p #Substitution \top \top ph0 xX $= ( bot-is-pattern imp-is-pattern notation-reflexivity top-is-pattern not-is-pattern notation-transitivity substitution-bot top-is-sugar not-is-sugar notation-imp substitution-imp notation-substitution ) CCDCCDAFFABACCCCBABIABIMFCGCCDJCGCCDCCDCKCCCCCECELHHFCGCCDJCGCCDCCDCKCCCCCECELHHAEN $.
${ substitution-not.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-not $p #Substitution ( \not ph1 ) ( \not ph2 ) ph0 xX $= ( bot-is-pattern imp-is-pattern not-is-pattern not-is-sugar substitution-bot substitution-imp notation-reflexivity notation-substitution ) BFGCFGABHCHADABFCFDEADJKBICIALM $. $}
${ substitution-or.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-or.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-or $p #Substitution ( \or ph1 ph2 ) ( \or ph3 ph4 ) ph0 xX $= ( not-is-pattern imp-is-pattern or-is-pattern or-is-sugar substitution-not substitution-imp notation-reflexivity notation-substitution ) BICJDIEJABCKDEKAFABICDIEFABDFGMHNBCLDELAOP $. $}
${ substitution-and.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-and.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-and $p #Substitution ( \and ph1 ph2 ) ( \and ph3 ph4 ) ph0 xX $= ( not-is-pattern or-is-pattern substitution-not and-is-pattern and-is-sugar substitution-or notation-reflexivity notation-substitution ) BICIJIDIEIJIABCLDELAFABICIJDIEIJFABICIDIEIFABDFGKACEFHKNKBCMDEMAOP $. $}
${ substitution-iff.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-iff.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-iff $p #Substitution ( \iff ph1 ph2 ) ( \iff ph3 ph4 ) ph0 xX $= ( imp-is-pattern and-is-pattern iff-is-pattern substitution-imp iff-is-sugar substitution-and notation-reflexivity notation-substitution ) BCICBIJDEIEDIJABCKDEKAFABCICBIDEIEDIFABCDEFGHLACBEDFHGLNBCMDEMAOP $. $}
${ substitution-ceil.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-ceil $p #Substitution ( \ceil ph1 ) ( \ceil ph2 ) ph0 xX $= ( definedness-is-symbol symbol-is-pattern app-is-pattern ceil-is-pattern ceil-is-sugar substitution-symbol substitution-app notation-reflexivity notation-substitution ) FGBHFGCHABICIADAFGBFGCDADFKELBJCJAMN $. $}
${ substitution-floor.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-floor $p #Substitution ( \floor ph1 ) ( \floor ph2 ) ph0 xX $= ( not-is-pattern ceil-is-pattern floor-is-pattern substitution-not floor-is-sugar substitution-ceil notation-reflexivity notation-substitution ) BFGFCFGFABHCHADABFGCFGDABFCFDABCDEIKIBJCJALM $. $}
${ substitution-included.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-included.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-included $p #Substitution ( \included ph1 ph2 ) ( \included ph3 ph4 ) ph0 xX $= ( imp-is-pattern floor-is-pattern included-is-pattern included-is-sugar substitution-imp substitution-floor notation-reflexivity notation-substitution ) BCIJDEIJABCKDEKAFABCIDEIFABCDEFGHMNBCLDELAOP $. $}
${ substitution-eq.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-eq.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-eq $p #Substitution ( \eq ph1 ph2 ) ( \eq ph3 ph4 ) ph0 xX $= ( iff-is-pattern floor-is-pattern eq-is-pattern eq-is-sugar substitution-iff substitution-floor notation-reflexivity notation-substitution ) BCIJDEIJABCKDEKAFABCIDEIFABCDEFGHMNBCLDELAOP $. $}
${ substitution-inh.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-inh $p #Substitution ( \inh ph1 ) ( \inh ph2 ) ph0 xX $= ( inhabitant-is-symbol symbol-is-pattern app-is-pattern inh-is-pattern inh-is-sugar substitution-symbol substitution-app notation-reflexivity notation-substitution ) FGBHFGCHABICIADAFGBFGCDADFKELBJCJAMN $. $}
${ substitution-in-sort.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-in-sort.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-in-sort $p #Substitution ( \in-sort ph1 ph2 ) ( \in-sort ph3 ph4 ) ph0 xX $= ( inh-is-pattern included-is-pattern in-sort-is-pattern in-sort-is-sugar substitution-inh substitution-included notation-reflexivity notation-substitution ) BCIJDEIJABCKDEKAFABCIDEIFGACEFHMNBCLDELAOP $. $}
${ substitution-pair-sort.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-pair-sort.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-pair-sort $p #Substitution ( \pair-sort ph1 ph2 ) ( \pair-sort ph3 ph4 ) ph0 xX $= ( pair-sort-symbol-is-symbol symbol-is-pattern app-is-pattern pair-sort-is-pattern substitution-app pair-sort-is-sugar substitution-symbol notation-reflexivity notation-substitution ) IJBKCKIJDKEKABCLDELAFAIJBKCIJDKEFAIJBIJDFAFIOGMHMBCNDENAPQ $. $}
${ substitution-pair.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-pair.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-pair $p #Substitution ( \pair ph1 ph2 ) ( \pair ph3 ph4 ) ph0 xX $= ( pair-symbol-is-symbol symbol-is-pattern app-is-pattern pair-is-pattern substitution-app pair-is-sugar substitution-symbol notation-reflexivity notation-substitution ) IJBKCKIJDKEKABCLDELAFAIJBKCIJDKEFAIJBIJDFAFIOGMHMBCNDENAPQ $. $}
${ substitution-pair-fst.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-pair-fst $p #Substitution ( \pair-fst ph1 ) ( \pair-fst ph2 ) ph0 xX $= ( pair-fst-symbol-is-symbol symbol-is-pattern app-is-pattern pair-fst-is-pattern pair-fst-is-sugar substitution-symbol substitution-app notation-reflexivity notation-substitution ) FGBHFGCHABICIADAFGBFGCDADFKELBJCJAMN $. $}
${ substitution-pair-snd.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-pair-snd $p #Substitution ( \pair-snd ph1 ) ( \pair-snd ph2 ) ph0 xX $= ( pair-snd-symbol-is-symbol symbol-is-pattern app-is-pattern pair-snd-is-pattern pair-snd-is-sugar substitution-symbol substitution-app notation-reflexivity notation-substitution ) FGBHFGCHABICIADAFGBFGCDADFKELBJCJAMN $. $}
${ $d xX x $.
   $d ph2 x $.
   substitution-exists-alt.0 $e #Substitution ph0 ph1 ph2 xX $.
   substitution-exists-alt $p #Substitution ( \exists x ph0 ) ( \exists x ph1 ) ph2 xX $= ( element-var-is-var substitution-identity substitution-exists ) CBBADDEBDGHFI $. $}
${ notation-not.0 $e #Notation ph0 ph1 $.
   notation-not $p #Notation ( \not ph0 ) ( \not ph1 ) $= ( bot-is-pattern not-is-pattern imp-is-pattern not-is-sugar notation-transitivity notation-reflexivity notation-imp notation-symmetry ) AEBDFBEAEADFBDFAGADBDCDIJHBEBDFBGKH $. $}
${ notation-or.0 $e #Notation ph0 ph2 $.
   notation-or.1 $e #Notation ph1 ph3 $.
   notation-or $p #Notation ( \or ph0 ph1 ) ( \or ph2 ph3 ) $= ( not-is-pattern or-is-pattern imp-is-pattern or-is-sugar notation-transitivity notation-not notation-imp notation-symmetry ) ABHCGDICDHABHAGBICGDIABJAGBCGDACELFMKCDHCGDICDJNK $. $}
${ notation-and.0 $e #Notation ph0 ph2 $.
   notation-and.1 $e #Notation ph1 ph3 $.
   notation-and $p #Notation ( \and ph0 ph1 ) ( \and ph2 ph3 ) $= ( not-is-pattern or-is-pattern and-is-pattern notation-not and-is-sugar notation-transitivity notation-or notation-symmetry ) ABICGDGHGCDIABIAGBGHGCGDGHGABKAGBGHCGDGHAGBGCGDGACEJBDFJMJLCDICGDGHGCDKNL $. $}
${ notation-iff.0 $e #Notation ph0 ph2 $.
   notation-iff.1 $e #Notation ph1 ph3 $.
   notation-iff $p #Notation ( \iff ph0 ph1 ) ( \iff ph2 ph3 ) $= ( imp-is-pattern iff-is-pattern and-is-pattern iff-is-sugar notation-imp notation-transitivity notation-and notation-symmetry ) ABHCDGDCGICDHABHABGBAGICDGDCGIABJABGBAGCDGDCGABCDEFKBADCFEKMLCDHCDGDCGICDJNL $. $}
${ notation-forall.0 $e #Notation ph0 ph1 $.
   notation-forall $p #Notation ( \forall x ph0 ) ( \forall x ph1 ) $= ( not-is-pattern exists-is-pattern forall-is-pattern forall-is-sugar notation-not notation-transitivity notation-exists notation-symmetry ) ACGBECFEBCGACGAECFEBECFEACHAECFBECFAEBECABDIKIJBCGBECFEBCHLJ $. $}
${ notation-ceil.0 $e #Notation ph0 ph1 $.
   notation-ceil $p #Notation ( \ceil ph0 ) ( \ceil ph1 ) $= ( definedness-is-symbol symbol-is-pattern ceil-is-pattern app-is-pattern ceil-is-sugar notation-transitivity notation-reflexivity notation-app notation-symmetry ) AFDEBGBFAFDEAGDEBGAHDEADEBDEJCKIBFDEBGBHLI $. $}
${ notation-floor.0 $e #Notation ph0 ph1 $.
   notation-floor $p #Notation ( \floor ph0 ) ( \floor ph1 ) $= ( not-is-pattern ceil-is-pattern floor-is-pattern floor-is-sugar notation-not notation-transitivity notation-ceil notation-symmetry ) AFBDEDBFAFADEDBDEDAGADEBDEADBDABCHJHIBFBDEDBGKI $. $}
${ notation-in.0 $e #Notation ph0 ph1 $.
   notation-in $p #Notation ( \in x ph0 ) ( \in x ph1 ) $= ( element-var-is-var var-is-pattern and-is-pattern in-is-pattern ceil-is-pattern in-is-sugar notation-transitivity notation-reflexivity notation-and notation-ceil notation-symmetry ) ACHCEFBGIBCHACHCEFAGICEFBGIACJCEFAGCEFBGCEFACEFBCEFLDMNKBCHCEFBGIBCJOK $. $}
${ notation-included.0 $e #Notation ph0 ph2 $.
   notation-included.1 $e #Notation ph1 ph3 $.
   notation-included $p #Notation ( \included ph0 ph1 ) ( \included ph2 ph3 ) $= ( imp-is-pattern included-is-pattern floor-is-pattern included-is-sugar notation-transitivity notation-imp notation-floor notation-symmetry ) ABHCDGICDHABHABGICDGIABJABGCDGABCDEFLMKCDHCDGICDJNK $. $}
${ notation-eq.0 $e #Notation ph0 ph2 $.
   notation-eq.1 $e #Notation ph1 ph3 $.
   notation-eq $p #Notation ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) $= ( iff-is-pattern eq-is-pattern floor-is-pattern eq-is-sugar notation-transitivity notation-iff notation-floor notation-symmetry ) ABHCDGICDHABHABGICDGIABJABGCDGABCDEFLMKCDHCDGICDJNK $. $}
${ notation-inh.0 $e #Notation ph0 ph1 $.
   notation-inh $p #Notation ( \inh ph0 ) ( \inh ph1 ) $= ( inhabitant-is-symbol symbol-is-pattern inh-is-pattern app-is-pattern inh-is-sugar notation-transitivity notation-reflexivity notation-app notation-symmetry ) AFDEBGBFAFDEAGDEBGAHDEADEBDEJCKIBFDEBGBHLI $. $}
${ notation-in-sort.0 $e #Notation ph0 ph2 $.
   notation-in-sort.1 $e #Notation ph1 ph3 $.
   notation-in-sort $p #Notation ( \in-sort ph0 ph1 ) ( \in-sort ph2 ph3 ) $= ( inh-is-pattern in-sort-is-pattern included-is-pattern in-sort-is-sugar notation-transitivity notation-inh notation-included notation-symmetry ) ABHCDGICDHABHABGICDGIABJABGCDGEBDFLMKCDHCDGICDJNK $. $}
${ notation-sorted-forall.0 $e #Notation ph0 ph2 $.
   notation-sorted-forall.1 $e #Notation ph1 ph3 $.
   notation-sorted-forall $p #Notation ( \sorted-forall x ph0 ph1 ) ( \sorted-forall x ph2 ph3 ) $= ( element-var-is-var var-is-pattern in-sort-is-pattern imp-is-pattern sorted-forall-is-pattern forall-is-pattern sorted-forall-is-sugar notation-transitivity notation-reflexivity notation-in-sort notation-imp notation-forall notation-symmetry ) ABELEHICJDKEMCDELABELEHIAJBKEMEHICJDKEMABENEHIAJBKEHICJDKEEHIAJBEHICJDEHIAEHICEHIPFQGRSOCDELEHICJDKEMCDENTO $. $}
${ notation-sorted-exists.0 $e #Notation ph0 ph2 $.
   notation-sorted-exists.1 $e #Notation ph1 ph3 $.
   notation-sorted-exists $p #Notation ( \sorted-exists x ph0 ph1 ) ( \sorted-exists x ph2 ph3 ) $= ( element-var-is-var var-is-pattern in-sort-is-pattern and-is-pattern sorted-exists-is-pattern exists-is-pattern sorted-exists-is-sugar notation-transitivity notation-reflexivity notation-in-sort notation-and notation-exists notation-symmetry ) ABELEHICJDKEMCDELABELEHIAJBKEMEHICJDKEMABENEHIAJBKEHICJDKEEHIAJBEHICJDEHIAEHICEHIPFQGRSOCDELEHICJDKEMCDENTO $. $}
${ notation-forall-sort.0 $e #Notation ph0 ph1 $.
   notation-forall-sort $p #Notation ( \forall-sort s0 ph0 ) ( \forall-sort s0 ph1 ) $= ( sort-is-symbol symbol-is-pattern forall-sort-is-pattern sorted-forall-is-pattern forall-sort-is-sugar notation-transitivity notation-reflexivity notation-sorted-forall notation-symmetry ) ACGEFBCHBCGACGEFACHEFBCHACIEFAEFBCEFKDLJBCGEFBCHBCIMJ $. $}
${ notation-exists-sort.0 $e #Notation ph0 ph1 $.
   notation-exists-sort $p #Notation ( \exists-sort s0 ph0 ) ( \exists-sort s0 ph1 ) $= ( sort-is-symbol symbol-is-pattern exists-sort-is-pattern sorted-exists-is-pattern exists-sort-is-sugar notation-transitivity notation-reflexivity notation-sorted-exists notation-symmetry ) ACGEFBCHBCGACGEFACHEFBCHACIEFAEFBCEFKDLJBCGEFBCHBCIMJ $. $}
${ notation-is-top.0 $e #Notation ph0 ph1 $.
   notation-is-top $p #Notation ( \is-top ph0 ) ( \is-top ph1 ) $= ( top-is-pattern is-top-is-pattern eq-is-pattern is-top-is-sugar notation-transitivity notation-reflexivity notation-eq notation-symmetry ) AEBDFBEAEADFBDFAGADBDCDIJHBEBDFBGKH $. $}
${ notation-is-bot.0 $e #Notation ph0 ph1 $.
   notation-is-bot $p #Notation ( \is-bot ph0 ) ( \is-bot ph1 ) $= ( bot-is-pattern is-bot-is-pattern eq-is-pattern is-bot-is-sugar notation-transitivity notation-reflexivity notation-eq notation-symmetry ) AEBDFBEAEADFBDFAGADBDCDIJHBEBDFBGKH $. $}
${ notation-is-predicate.0 $e #Notation ph0 ph1 $.
   notation-is-predicate $p #Notation ( \is-predicate ph0 ) ( \is-predicate ph1 ) $= ( is-top-is-pattern is-bot-is-pattern is-predicate-is-pattern or-is-pattern is-predicate-is-sugar notation-transitivity notation-is-top notation-is-bot notation-or notation-symmetry ) AFBDBEGBFAFADAEGBDBEGAHADAEBDBEABCJABCKLIBFBDBEGBHMI $. $}
${ $d x ph0 $.
   propagation-app-bot-left $p |- ( \imp ( \app \bot ph0 ) \bot ) $= ( x-is-element-var element-var-is-var bot-is-pattern var-is-pattern app-is-pattern application-context-var application-context-app-left substitution-var-same substitution-disjoint substitution-app proof-rule-propagation-bot ) BCEAFDAFBCBCEABCBCGHDDABCEABCDBCIADBCJKL $. $}
${ $d x ph0 $.
   propagation-app-bot-right $p |- ( \imp ( \app ph0 \bot ) \bot ) $= ( x-is-element-var element-var-is-var bot-is-pattern var-is-pattern app-is-pattern application-context-var application-context-app-right substitution-disjoint substitution-var-same substitution-app proof-rule-propagation-bot ) ABCEFADFBCABCEBCBCGHDADABCEBCADBCIDBCJKL $. $}
${ $d x ph2 $.
   propagation-app-or-left $p |- ( \imp ( \app ( \or ph0 ph1 ) ph2 ) ( \or ( \app ph0 ph2 ) ( \app ph1 ph2 ) ) ) $= ( x-is-element-var element-var-is-var var-is-pattern or-is-pattern app-is-pattern substitution-var-same substitution-disjoint substitution-app application-context-var application-context-app-left proof-rule-propagation-or ) DEFCHABGCHACHBCHABDEDEFCDEDELMABGABGCDEFCDEABGDEICABGDEJKAACDEFCDEADEICADEJKBBCDEFCDEBDEICBDEJKN $. $}
${ $d x ph0 $.
   propagation-app-or-right $p |- ( \imp ( \app ph0 ( \or ph1 ph2 ) ) ( \or ( \app ph0 ph1 ) ( \app ph0 ph2 ) ) ) $= ( x-is-element-var element-var-is-var var-is-pattern or-is-pattern app-is-pattern substitution-disjoint substitution-var-same substitution-app application-context-var application-context-app-right proof-rule-propagation-or ) ADEFHABCGHABHACHBCDEADEFDEDELMBCGABCGADEFDEABCGDEIBCGDEJKBABADEFDEABDEIBDEJKCACADEFDEACDEICDEJKN $. $}
${ $d y ph1 $.
   $d y x $.
   propagation-app-exists-left.0 $e #Fresh x ph1 $.
   propagation-app-exists-left $p |- ( \imp ( \app ( \exists x ph0 ) ph1 ) ( \exists x ( \app ph0 ph1 ) ) ) $= ( element-var-is-var y-is-element-var var-is-pattern exists-is-pattern app-is-pattern substitution-var-same substitution-disjoint substitution-app application-context-var application-context-app-left fresh-in-var fresh-in-app proof-rule-propagation-exists ) FEGBIACHBIABIACFEFEGBFEFEMNACHACHBFEGBFEACHFEJBACHFEKLAABFEGBFEAFEJBAFEKLFEGBCECEFEODPQ $. $}
${ $d y ph0 $.
   $d y x $.
   propagation-app-exists-right.0 $e #Fresh x ph0 $.
   propagation-app-exists-right $p |- ( \imp ( \app ph0 ( \exists x ph1 ) ) ( \exists x ( \app ph0 ph1 ) ) ) $= ( element-var-is-var y-is-element-var var-is-pattern exists-is-pattern app-is-pattern substitution-disjoint substitution-var-same substitution-app application-context-var application-context-app-right fresh-disjoint fresh-in-app proof-rule-propagation-exists ) AFEGIABCHIABIBCFEAFEGFEFEMNBCHABCHAFEGFEABCHFEJBCHFEKLBABAFEGFEABFEJBFEKLAFEGCEDFEGCEOPQ $. $}
${ $d x ph2 $.
   frame-app-left.0 $e |- ( \imp ph0 ph1 ) $.
   frame-app-left $p |- ( \imp ( \app ph0 ph2 ) ( \app ph1 ph2 ) ) $= ( x-is-element-var element-var-is-var var-is-pattern app-is-pattern substitution-var-same substitution-disjoint substitution-app application-context-var application-context-app-left proof-rule-frame ) EFGCHACHBCHABEFEFGCEFEFLMAACEFGCEFAEFICAEFJKBBCEFGCEFBEFICBEFJKDN $. $}
${ $d x ph0 $.
   frame-app-right.0 $e |- ( \imp ph1 ph2 ) $.
   frame-app-right $p |- ( \imp ( \app ph0 ph1 ) ( \app ph0 ph2 ) ) $= ( x-is-element-var element-var-is-var var-is-pattern app-is-pattern substitution-disjoint substitution-var-same substitution-app application-context-var application-context-app-right proof-rule-frame ) AEFGHABHACHBCEFAEFGEFEFLMBABAEFGEFABEFIBEFJKCACAEFGEFACEFICEFJKDN $. $}
lemma-top $p |- \top $= ( bot-is-pattern imp-is-pattern not-is-pattern top-is-pattern proof-rule-prop-1 proof-rule-mp notation-reflexivity notation-symmetry notation-transitivity notation-proof proof-rule-prop-2 not-is-sugar top-is-sugar ) ACDAABACAAABBAABAAABABBAAABBAABBAAABAKAAABEFAAEFACAABAABALAABAABAABGHIJDACACMACACACGHIJ $.
${ lemma-forall-gen.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-forall-gen.1 $e #Fresh x ph0 $.
   lemma-forall-gen $p |- ( \imp ph0 ( \forall x ph1 ) ) $= ( not-is-pattern exists-is-pattern imp-is-pattern bot-is-pattern forall-is-pattern element-var-is-var notation-reflexivity rule-contrapositive-sugar notation-symmetry notation-transitivity dn-intro-sugar fresh-in-bot fresh-in-imp not-is-sugar notation-fresh proof-rule-gen forall-is-sugar notation-imp notation-proof rule-imp-transitivity ) AAFFBCJAPAFFBFCGFHAFFBCJHBFCGAFBFAFCABDMAIHAFCKAICKECKQRAFAIHAIHASAIHAIHAIHLNOTUAMAFFBCJAFFBFCGFAFFLBCJBFCGFBFCGFBCUBBFCGFBFCGFBFCGFLNOUCUDUE $. $}
lemma-dn-intro $p |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) \bot ) ) $= ( not-is-pattern and-is-pattern or-is-pattern rule-iff-transitivity iff-reflexivity bot-is-pattern imp-is-pattern rule-iff-compat-in-and and-associativity and-commutativity top-is-pattern rule-iff-compat-in-or rule-iff-symmetry or-commutativity rule-iff-compat-in-not rule-iff-elim-left rule-imp-transitivity imp-to-or double-negation bot-to-and de-morgan-or or-complement and-top contradiction or-right-distributivity de-morgan-and or-idempotency and-idempotency resolution-1 rule-imp-compat-in-and and-bot proof-rule-mp ) AAGHGHHBGHAAGHGHHAAGHGHHUEAAGHGHHBABACGAAGHGHHBABACAAGHGHHBAABABDABADABADCCCABACAAGHGHHBABABAABCDBAABCDDBAABABDABADABADCCCAAGHGHHABABAABCDBAABCDDAAGHGHHABAGHGHDABABAABCDBAABCDDAAGHGHSABABAGHGHABAABCDBAABCDAAAFPAGHGHAGHBGDABAABCDBAABCDAGHGSAGHBABAABCDBGAABCAGHABAABCDAGHABGDABAABCDAGSABABGAABCAAAFPAUAMEPAUAMEMEPABABAABCDBAABCDDBABBABAABCDBAABCDBCAABABDABADABADCCCABABAABCDBAABCDUBABBABAABCDBAABCDBCAABABDABADABADCCCAABABDABADABADCCCABBAABAABCDBAABCDBABABDABADABADCCABBAAATAFEABAABCDBAABCDBABAABCDBBAABCBCABABDABADABADCCABAABCDBAABCUBABAABCDBBAABCBCABADABABDCABADCABABDABADABADCCABAABCDBBABADABABDCAABCBABADABAABCDBBABAABCDABADABABDCABAABCDTABAABCDABADABABDCABADABABDCABAABCDABAABCDABADABABDCABABAABCAABCABFAABCAABCAABCAAABABAFABFIAABCFEMABAABUFEABADABABDCABADABABDCABADABABDCABADABADABABDABABDABADABADABADABABAAABFAFMABADFEABABDABABDABABDABABABABABFABFMABABDFEIABADABABDCFEEEAABCBABABBDABADAABUGABABBDABADABADABABABBAABFABBAAATAFEMABADFEEIABADABABDCABADCABABDABADCABADCABABDABADABADCCABADABABDCABABDABADCABADABADABADABABDCABADABABDCABABDABADCABADABADABABDABABDABADFABABDFIABADABABDKEABADFIABABDABADABADJEEEIAABABDABADABADCCCFEEEAABABDABADABADCCCAABABDABADABADCCCABACAABABDABADABADCCCAABABDABADABADCCCAABABDABADABADCCCAABABDABADABADCCCFAAABABDABADABADCCABABDABADABADCCAFABABDABADABADCCFIEAABABDABADABADCCCABAABADABADCCCABACAABABDABADABADCCCABABDAABADABADCCCABAABADABADCCCAABABDABADABADCCCABABDACABADABADCCABABDAABADABADCCCAABABDABADABADCCCAABABDCABADABADCCABABDACABADABADCCAABABDABADABADCCCAABABDABADABADCCCAABABDCABADABADCCAAABABDABADABADCCABABDABADABADCCAFABABDABADABADCCFIAABABDCABADABADCCAABABDABADABADCCCAABABDABADABADCJNEAABABDCABABDACABADABADCABADABADCAABABDKABADABADCFIEABABDAABADABADCJEABABDABAABADABADCCAABADABADCCABABDABABABABDABABDABABABDABABDABABDABABDFABABOEABUHEABFEAABADABADCCFIEABAABADABADCCCABAABADCCABACABAABADABADCCCLABAABADCCCABAABADCCABAABADABADCCCABADABAABADCCCLABAABADCCCABAABADABADCCCABADABCAABADCCABADABAABADCCCABAABADABADCCCABABADCAABADCCABADABCAABADCCABAABADABADCCCABABADAABADCCCABABADCAABADCCABABAABADABADCCABADAABADCCABFAABADABADCCABADACABADCABADAABADCCAABADABADCCAABADCABADCABADACABADCAABADABADCCAABADABADCCAABADCABADCAAABADABADCABADABADCAFABADABADCFIAABADCABADCAABADABADCCAABADABADJNEAABADCABADACABADABADAABADKABADFIEABADAABADJEIABABADCAABADCCABABADAABADCCCABABADAABADCJNEABABADCABADABCAABADCAABADCABABADKAABADCFIEABADABAABADCJEABADLABAABADCCABAABADCCABADABADLABADAABDABADABAOAABOEAUCEABAABADCCFIEABAABADCCUDEABAABADCCABACABACABAABADCCLABACCABACABAABADCCABADABACCLABACCABAABADCCABADABCACABADABACCABAABADCCABABADCACABADABCACABAABADCCABABADACCABABADCACABABAABADCABADACABFAABADKIABABADCACABABADACCABABADAJNEABABADCABADABCAAABABADKAFIEABADABAJEABADLABACABACABADABADLABADAABDABADABAOAABOEAUCEABACFIEABACUDEABACFEEEEEQABACGABACCGABACABACABACCGABACCABACABACABACCABACABACCABACABACUINQABACGABACABACABACABACGABACABACABACABACABACABACAABCABACABACAABCAABCABAKAAABABAFABFIEAABKEABABAAABFAFIEQAUJRABACABACABACFQUKRABACULRRUM $.
