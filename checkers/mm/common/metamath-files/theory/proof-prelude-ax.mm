$( mmtool stats
Propositions: 0
Constants: 101
Variables: 34
VarHyps: 2973
LogHyp: 1076
DsjVarPairs: 158
ProofSteps: 0
TotalLemmaSize: 0
TotalClaimSize: 0
MaxStackDepth: 0
MaxStackSize: 0
GuestCycles: 22473680
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
   notation-notation $a #Notation ph2 ph3 $. $}
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
imp-reflexivity $a |- ( \imp ph0 ph0 ) $.
${ rule-imp-transitivity.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-transitivity.1 $e |- ( \imp ph1 ph2 ) $.
   rule-imp-transitivity $a |- ( \imp ph0 ph2 ) $. $}
imp-transitivity $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph1 ph2 ) ( \imp ph0 ph2 ) ) ) $.
bot-elim $a |- ( \imp \bot ph0 ) $.
contradiction $a |- ( \imp ( \imp ( \not ph0 ) \bot ) ph0 ) $.
top-intro $a |- \top $.
mp $a |- ( \imp ph0 ( \imp ( \imp ph0 ph1 ) ph1 ) ) $.
not-elim $a |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) \bot ) ) $.
or-intro-left $a |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) ph1 ) ) $.
contrapositive $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph1 \bot ) ( \imp ph0 \bot ) ) ) $.
${ rule-contrapositive.0 $e |- ( \imp ph0 ph1 ) $.
   rule-contrapositive $a |- ( \imp ( \imp ph1 \bot ) ( \imp ph0 \bot ) ) $. $}
and-elim-left $a |- ( \imp ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ph0 ) $.
and-elim-right $a |- ( \imp ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ph1 ) $.
not-elim-alt $a |- ( \imp ( \imp ph0 \bot ) ( \imp ph0 ph1 ) ) $.
${ rule-peirce-bot.0 $e |- ( \imp ( \imp ph0 \bot ) ph0 ) $.
   rule-peirce-bot $a |- ph0 $. $}
peirce-bot $a |- ( \imp ( \imp ( \imp ph0 \bot ) ph0 ) ph0 ) $.
${ rule-peirce.0 $e |- ( \imp ( \imp ph0 ph1 ) ph0 ) $.
   rule-peirce $a |- ph0 $. $}
peirce $a |- ( \imp ( \imp ( \imp ph0 ph1 ) ph0 ) ph0 ) $.
${ rule-or-elim-alt.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim-alt.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim-alt.2 $e |- ( \imp ( \imp ph0 \bot ) ph1 ) $.
   rule-or-elim-alt $a |- ph2 $. $}
${ rule-or-elim.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim $a |- ( \imp ( \imp ( \imp ph0 \bot ) ph1 ) ph2 ) $. $}
or-elim $a |- ( \imp ( \imp ph0 ph2 ) ( \imp ( \imp ph1 ph2 ) ( \imp ( \imp ( \imp ph0 \bot ) ph1 ) ph2 ) ) ) $.
${ rule-and-intro-alt.0 $e |- ph0 $.
   rule-and-intro-alt $a |- ( \imp ph1 ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ) $. $}
and-intro $a |- ( \imp ph0 ( \imp ph1 ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) ) ) $.
${ rule-and-intro.0 $e |- ph0 $.
   rule-and-intro.1 $e |- ph1 $.
   rule-and-intro $a |- ( \imp ( \imp ( \imp ( \imp ph0 \bot ) \bot ) ( \imp ph1 \bot ) ) \bot ) $. $}
and-elim-left-sugar $a |- ( \imp ( \and ph0 ph1 ) ph0 ) $.
and-elim-right-sugar $a |- ( \imp ( \and ph0 ph1 ) ph1 ) $.
and-intro-sugar $a |- ( \imp ph0 ( \imp ph1 ( \and ph0 ph1 ) ) ) $.
${ rule-and-intro-sugar.0 $e |- ph0 $.
   rule-and-intro-sugar.1 $e |- ph1 $.
   rule-and-intro-sugar $a |- ( \and ph0 ph1 ) $. $}
${ rule-and-intro-alt2-sugar.0 $e |- ( \imp ph0 ph1 ) $.
   rule-and-intro-alt2-sugar.1 $e |- ( \imp ph0 ph2 ) $.
   rule-and-intro-alt2-sugar $a |- ( \imp ph0 ( \and ph1 ph2 ) ) $. $}
or-intro-left-sugar $a |- ( \imp ph0 ( \or ph0 ph1 ) ) $.
or-intro-right-sugar $a |- ( \imp ph0 ( \or ph1 ph0 ) ) $.
${ rule-or-elim-alt-sugar.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim-alt-sugar.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim-alt-sugar.2 $e |- ( \or ph0 ph1 ) $.
   rule-or-elim-alt-sugar $a |- ph2 $. $}
${ rule-or-elim-sugar.0 $e |- ( \imp ph0 ph2 ) $.
   rule-or-elim-sugar.1 $e |- ( \imp ph1 ph2 ) $.
   rule-or-elim-sugar $a |- ( \imp ( \or ph0 ph1 ) ph2 ) $. $}
or-elim-sugar $a |- ( \imp ( \imp ph0 ph2 ) ( \imp ( \imp ph1 ph2 ) ( \imp ( \or ph0 ph1 ) ph2 ) ) ) $.
${ rule-contradiction.0 $e |- ( \imp ( \not ph0 ) \bot ) $.
   rule-contradiction $a |- ph0 $. $}
${ rule-bot-elim.0 $e |- \bot $.
   rule-bot-elim $a |- ph0 $. $}
${ rule-not-elim-sugar.0 $e |- ph0 $.
   rule-not-elim-sugar.1 $e |- ( \not ph0 ) $.
   rule-not-elim-sugar $a |- \bot $. $}
${ rule-iff-intro.0 $e |- ( \imp ph0 ph1 ) $.
   rule-iff-intro.1 $e |- ( \imp ph1 ph0 ) $.
   rule-iff-intro $a |- ( \iff ph0 ph1 ) $. $}
contrapositive-sugar $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \not ph1 ) ( \not ph0 ) ) ) $.
${ rule-contrapositive-sugar.0 $e |- ( \imp ph0 ph1 ) $.
   rule-contrapositive-sugar $a |- ( \imp ( \not ph1 ) ( \not ph0 ) ) $. $}
${ rule-contrapositive-alt-sugar.0 $e |- ( \imp ( \not ph0 ) ( \not ph1 ) ) $.
   rule-contrapositive-alt-sugar $a |- ( \imp ph1 ph0 ) $. $}
excluded-middle $a |- ( \or ph0 ( \not ph0 ) ) $.
case $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ( \not ph0 ) ph1 ) ph1 ) ) $.
${ rule-case.0 $e |- ( \imp ph0 ph1 ) $.
   rule-case.1 $e |- ( \imp ( \not ph0 ) ph1 ) $.
   rule-case $a |- ph1 $. $}
${ rule-case-alt.0 $e |- ( \or ph0 ph1 ) $.
   rule-case-alt.1 $e |- ( \imp ph0 ph2 ) $.
   rule-case-alt.2 $e |- ( \imp ph1 ph2 ) $.
   rule-case-alt $a |- ph2 $. $}
${ rule-imp-compat-in-or.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-compat-in-or.1 $e |- ( \imp ph2 ph3 ) $.
   rule-imp-compat-in-or $a |- ( \imp ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) $. $}
${ rule-imp-compat-in-and.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-compat-in-and.1 $e |- ( \imp ph2 ph3 ) $.
   rule-imp-compat-in-and $a |- ( \imp ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) $. $}
iff-elim-left $a |- ( \imp ( \iff ph0 ph1 ) ( \imp ph0 ph1 ) ) $.
iff-elim-right $a |- ( \imp ( \iff ph0 ph1 ) ( \imp ph1 ph0 ) ) $.
${ rule-iff-elim-left.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-elim-left $a |- ( \imp ph0 ph1 ) $. $}
${ rule-iff-elim-right.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-elim-right $a |- ( \imp ph1 ph0 ) $. $}
iff-reflexivity $a |- ( \iff ph0 ph0 ) $.
${ rule-iff-symmetry.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-symmetry $a |- ( \iff ph1 ph0 ) $. $}
${ rule-iff-transitivity.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-transitivity.1 $e |- ( \iff ph1 ph2 ) $.
   rule-iff-transitivity $a |- ( \iff ph0 ph2 ) $. $}
${ rule-iff-compat-in-or.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-or.1 $e |- ( \iff ph2 ph3 ) $.
   rule-iff-compat-in-or $a |- ( \iff ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) $. $}
${ rule-iff-compat-in-and.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-and.1 $e |- ( \iff ph2 ph3 ) $.
   rule-iff-compat-in-and $a |- ( \iff ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) $. $}
${ rule-iff-compat-in-not.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-not $a |- ( \iff ( \not ph0 ) ( \not ph1 ) ) $. $}
double-negation $a |- ( \iff ( \not ( \not ph0 ) ) ph0 ) $.
dn-intro-sugar $a |- ( \imp ph0 ( \not ( \not ph0 ) ) ) $.
dn-elim-sugar $a |- ( \imp ( \not ( \not ph0 ) ) ph0 ) $.
imp-to-or $a |- ( \iff ( \imp ph0 ph1 ) ( \or ( \not ph0 ) ph1 ) ) $.
bot-to-and $a |- ( \iff \bot ( \and ph0 ( \not ph0 ) ) ) $.
top-to-or $a |- ( \iff \top ( \or ph0 ( \not ph0 ) ) ) $.
iff-to-and $a |- ( \iff ( \iff ph0 ph1 ) ( \and ( \or ( \not ph0 ) ph1 ) ( \or ( \not ph1 ) ph0 ) ) ) $.
and-associativity $a |- ( \iff ( \and ( \and ph0 ph1 ) ph2 ) ( \and ph0 ( \and ph1 ph2 ) ) ) $.
and-commutativity $a |- ( \iff ( \and ph0 ph1 ) ( \and ph1 ph0 ) ) $.
or-associativity $a |- ( \iff ( \or ( \or ph0 ph1 ) ph2 ) ( \or ph0 ( \or ph1 ph2 ) ) ) $.
or-commutativity $a |- ( \iff ( \or ph0 ph1 ) ( \or ph1 ph0 ) ) $.
de-morgan-and $a |- ( \iff ( \not ( \and ph0 ph1 ) ) ( \or ( \not ph0 ) ( \not ph1 ) ) ) $.
de-morgan-or $a |- ( \iff ( \not ( \or ph0 ph1 ) ) ( \and ( \not ph0 ) ( \not ph1 ) ) ) $.
or-idempotency $a |- ( \iff ( \or ph0 ph0 ) ph0 ) $.
and-idempotency $a |- ( \iff ( \and ph0 ph0 ) ph0 ) $.
or-complement $a |- ( \iff ( \or ( \not ph0 ) ph0 ) \top ) $.
and-top $a |- ( \iff ( \and \top ph0 ) ph0 ) $.
or-top $a |- ( \iff ( \or \top ph0 ) \top ) $.
and-bot $a |- ( \imp ( \and \bot ph0 ) \bot ) $.
or-commutativity-alt $a |- ( \imp ( \imp ( \not ph0 ) ph1 ) ( \imp ( \not ph1 ) ph0 ) ) $.
or-to-imp-alt $a |- ( \imp ( \or ph0 ph1 ) ( \imp ( \not ph0 ) ph1 ) ) $.
${ rule-or-left-distributivity-right.0 $e |- ( \and ( \or ph0 ph2 ) ( \or ph1 ph2 ) ) $.
   rule-or-left-distributivity-right $a |- ( \or ( \and ph0 ph1 ) ph2 ) $. $}
or-left-distributivity-right $a |- ( \imp ( \and ( \or ph0 ph2 ) ( \or ph1 ph2 ) ) ( \or ( \and ph0 ph1 ) ph2 ) ) $.
or-left-distributivity $a |- ( \iff ( \or ( \and ph0 ph1 ) ph2 ) ( \and ( \or ph0 ph2 ) ( \or ph1 ph2 ) ) ) $.
or-right-distributivity $a |- ( \iff ( \or ph0 ( \and ph1 ph2 ) ) ( \and ( \or ph0 ph1 ) ( \or ph0 ph2 ) ) ) $.
and-left-distributivity $a |- ( \iff ( \and ( \or ph0 ph1 ) ph2 ) ( \or ( \and ph0 ph2 ) ( \and ph1 ph2 ) ) ) $.
resolution-1 $a |- ( \imp ( \and ( \not ph0 ) ph0 ) \bot ) $.
resolution-2 $a |- ( \imp ( \and ( \or ( \not ph0 ) ph1 ) ph0 ) ph1 ) $.
resolution-3 $a |- ( \imp ( \and ( \not ph0 ) ( \or ph0 ph1 ) ) ph1 ) $.
resolution-4 $a |- ( \imp ( \and ( \or ( \not ph0 ) ph1 ) ( \or ph0 ph2 ) ) ( \or ph1 ph2 ) ) $.
${ premises-switch.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   premises-switch $a |- ( \imp ph1 ( \imp ph0 ph2 ) ) $. $}
premises-switch-alt $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ph1 ( \imp ph0 ph2 ) ) ) $.
${ $d xX ph0 $.
   substitution-disjoint $a #Substitution ph0 ph0 ph1 xX $. $}
substitution-top $a #Substitution \top \top ph0 xX $.
${ substitution-not.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-not $a #Substitution ( \not ph1 ) ( \not ph2 ) ph0 xX $. $}
${ substitution-or.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-or.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-or $a #Substitution ( \or ph1 ph2 ) ( \or ph3 ph4 ) ph0 xX $. $}
${ substitution-and.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-and.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-and $a #Substitution ( \and ph1 ph2 ) ( \and ph3 ph4 ) ph0 xX $. $}
${ substitution-iff.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-iff.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-iff $a #Substitution ( \iff ph1 ph2 ) ( \iff ph3 ph4 ) ph0 xX $. $}
${ substitution-ceil.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-ceil $a #Substitution ( \ceil ph1 ) ( \ceil ph2 ) ph0 xX $. $}
${ substitution-floor.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-floor $a #Substitution ( \floor ph1 ) ( \floor ph2 ) ph0 xX $. $}
${ substitution-included.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-included.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-included $a #Substitution ( \included ph1 ph2 ) ( \included ph3 ph4 ) ph0 xX $. $}
${ substitution-eq.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-eq.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-eq $a #Substitution ( \eq ph1 ph2 ) ( \eq ph3 ph4 ) ph0 xX $. $}
${ substitution-inh.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-inh $a #Substitution ( \inh ph1 ) ( \inh ph2 ) ph0 xX $. $}
${ substitution-in-sort.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-in-sort.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-in-sort $a #Substitution ( \in-sort ph1 ph2 ) ( \in-sort ph3 ph4 ) ph0 xX $. $}
${ substitution-pair-sort.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-pair-sort.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-pair-sort $a #Substitution ( \pair-sort ph1 ph2 ) ( \pair-sort ph3 ph4 ) ph0 xX $. $}
${ substitution-pair.0 $e #Substitution ph1 ph3 ph0 xX $.
   substitution-pair.1 $e #Substitution ph2 ph4 ph0 xX $.
   substitution-pair $a #Substitution ( \pair ph1 ph2 ) ( \pair ph3 ph4 ) ph0 xX $. $}
${ substitution-pair-fst.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-pair-fst $a #Substitution ( \pair-fst ph1 ) ( \pair-fst ph2 ) ph0 xX $. $}
${ substitution-pair-snd.0 $e #Substitution ph1 ph2 ph0 xX $.
   substitution-pair-snd $a #Substitution ( \pair-snd ph1 ) ( \pair-snd ph2 ) ph0 xX $. $}
${ $d xX x $.
   $d ph2 x $.
   substitution-exists-alt.0 $e #Substitution ph0 ph1 ph2 xX $.
   substitution-exists-alt $a #Substitution ( \exists x ph0 ) ( \exists x ph1 ) ph2 xX $. $}
${ notation-not.0 $e #Notation ph0 ph1 $.
   notation-not $a #Notation ( \not ph0 ) ( \not ph1 ) $. $}
${ notation-or.0 $e #Notation ph0 ph2 $.
   notation-or.1 $e #Notation ph1 ph3 $.
   notation-or $a #Notation ( \or ph0 ph1 ) ( \or ph2 ph3 ) $. $}
${ notation-and.0 $e #Notation ph0 ph2 $.
   notation-and.1 $e #Notation ph1 ph3 $.
   notation-and $a #Notation ( \and ph0 ph1 ) ( \and ph2 ph3 ) $. $}
${ notation-iff.0 $e #Notation ph0 ph2 $.
   notation-iff.1 $e #Notation ph1 ph3 $.
   notation-iff $a #Notation ( \iff ph0 ph1 ) ( \iff ph2 ph3 ) $. $}
${ notation-forall.0 $e #Notation ph0 ph1 $.
   notation-forall $a #Notation ( \forall x ph0 ) ( \forall x ph1 ) $. $}
${ notation-ceil.0 $e #Notation ph0 ph1 $.
   notation-ceil $a #Notation ( \ceil ph0 ) ( \ceil ph1 ) $. $}
${ notation-floor.0 $e #Notation ph0 ph1 $.
   notation-floor $a #Notation ( \floor ph0 ) ( \floor ph1 ) $. $}
${ notation-in.0 $e #Notation ph0 ph1 $.
   notation-in $a #Notation ( \in x ph0 ) ( \in x ph1 ) $. $}
${ notation-included.0 $e #Notation ph0 ph2 $.
   notation-included.1 $e #Notation ph1 ph3 $.
   notation-included $a #Notation ( \included ph0 ph1 ) ( \included ph2 ph3 ) $. $}
${ notation-eq.0 $e #Notation ph0 ph2 $.
   notation-eq.1 $e #Notation ph1 ph3 $.
   notation-eq $a #Notation ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) $. $}
${ notation-inh.0 $e #Notation ph0 ph1 $.
   notation-inh $a #Notation ( \inh ph0 ) ( \inh ph1 ) $. $}
${ notation-in-sort.0 $e #Notation ph0 ph2 $.
   notation-in-sort.1 $e #Notation ph1 ph3 $.
   notation-in-sort $a #Notation ( \in-sort ph0 ph1 ) ( \in-sort ph2 ph3 ) $. $}
${ notation-sorted-forall.0 $e #Notation ph0 ph2 $.
   notation-sorted-forall.1 $e #Notation ph1 ph3 $.
   notation-sorted-forall $a #Notation ( \sorted-forall x ph0 ph1 ) ( \sorted-forall x ph2 ph3 ) $. $}
${ notation-sorted-exists.0 $e #Notation ph0 ph2 $.
   notation-sorted-exists.1 $e #Notation ph1 ph3 $.
   notation-sorted-exists $a #Notation ( \sorted-exists x ph0 ph1 ) ( \sorted-exists x ph2 ph3 ) $. $}
${ notation-forall-sort.0 $e #Notation ph0 ph1 $.
   notation-forall-sort $a #Notation ( \forall-sort s0 ph0 ) ( \forall-sort s0 ph1 ) $. $}
${ notation-exists-sort.0 $e #Notation ph0 ph1 $.
   notation-exists-sort $a #Notation ( \exists-sort s0 ph0 ) ( \exists-sort s0 ph1 ) $. $}
${ notation-is-top.0 $e #Notation ph0 ph1 $.
   notation-is-top $a #Notation ( \is-top ph0 ) ( \is-top ph1 ) $. $}
${ notation-is-bot.0 $e #Notation ph0 ph1 $.
   notation-is-bot $a #Notation ( \is-bot ph0 ) ( \is-bot ph1 ) $. $}
${ notation-is-predicate.0 $e #Notation ph0 ph1 $.
   notation-is-predicate $a #Notation ( \is-predicate ph0 ) ( \is-predicate ph1 ) $. $}
${ $d x ph0 $.
   propagation-app-bot-left $a |- ( \imp ( \app \bot ph0 ) \bot ) $. $}
${ $d x ph0 $.
   propagation-app-bot-right $a |- ( \imp ( \app ph0 \bot ) \bot ) $. $}
${ $d x ph2 $.
   propagation-app-or-left $a |- ( \imp ( \app ( \or ph0 ph1 ) ph2 ) ( \or ( \app ph0 ph2 ) ( \app ph1 ph2 ) ) ) $. $}
${ $d x ph0 $.
   propagation-app-or-right $a |- ( \imp ( \app ph0 ( \or ph1 ph2 ) ) ( \or ( \app ph0 ph1 ) ( \app ph0 ph2 ) ) ) $. $}
${ $d y ph1 $.
   $d y x $.
   propagation-app-exists-left.0 $e #Fresh x ph1 $.
   propagation-app-exists-left $a |- ( \imp ( \app ( \exists x ph0 ) ph1 ) ( \exists x ( \app ph0 ph1 ) ) ) $. $}
${ $d y ph0 $.
   $d y x $.
   propagation-app-exists-right.0 $e #Fresh x ph0 $.
   propagation-app-exists-right $a |- ( \imp ( \app ph0 ( \exists x ph1 ) ) ( \exists x ( \app ph0 ph1 ) ) ) $. $}
${ $d x ph2 $.
   frame-app-left.0 $e |- ( \imp ph0 ph1 ) $.
   frame-app-left $a |- ( \imp ( \app ph0 ph2 ) ( \app ph1 ph2 ) ) $. $}
${ $d x ph0 $.
   frame-app-right.0 $e |- ( \imp ph1 ph2 ) $.
   frame-app-right $a |- ( \imp ( \app ph0 ph1 ) ( \app ph0 ph2 ) ) $. $}
lemma-top $a |- \top $.
${ lemma-forall-gen.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-forall-gen.1 $e #Fresh x ph0 $.
   lemma-forall-gen $a |- ( \imp ph0 ( \forall x ph1 ) ) $. $}
lemma-dn-intro $a |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) \bot ) ) $.
lemma-imp2-iff $a |- ( \imp ( \and ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ph0 ( \imp ph2 ph1 ) ) ) ( \imp ph0 ( \iff ph1 ph2 ) ) ) $.
${ lemma-forall-intro.0 $e |- ph0 $.
   lemma-forall-intro $a |- ( \forall x ph0 ) $. $}
${ forall-elim.0 $e #Substitution ph1 ph0 y x $.
   forall-elim $a |- ( \imp ( \forall x ph0 ) ph1 ) $. $}
forall-elim-alt $a |- ( \imp ( \forall x ph0 ) ph0 ) $.
forall-elim-alt2 $a |- ( \imp ( \imp ph0 ( \forall x ph1 ) ) ( \imp ph0 ph1 ) ) $.
forall-intro-alt $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \forall x ph0 ) ph1 ) ) $.
exists-intro-alt $a |- ( \imp ph0 ( \exists x ph0 ) ) $.
${ lemma-forall-elim.0 $e |- ( \forall x ph0 ) $.
   lemma-forall-elim $a |- ph0 $. $}
${ $d x ph0 $.
   lemma-forall-sort-elim-disjoint.0 $e |- ( \forall-sort x ph0 ) $.
   lemma-forall-sort-elim-disjoint $a |- ph0 $. $}
${ $d x y $.
   alpha-exists.0 $e #Fresh y ph0 $.
   alpha-exists.1 $e #Substitution ph1 ph0 y x $.
   alpha-exists $a |- ( \iff ( \exists x ph0 ) ( \exists y ph1 ) ) $. $}
${ $d x y $.
   alpha-forall.0 $e #Fresh y ph0 $.
   alpha-forall.1 $e #Substitution ph1 ph0 y x $.
   alpha-forall $a |- ( \iff ( \forall x ph0 ) ( \forall y ph1 ) ) $. $}
${ $d x y $.
   alpha-forall-sort.0 $e #Fresh y ph0 $.
   alpha-forall-sort.1 $e #Substitution ph1 ph0 y x $.
   alpha-forall-sort $a |- ( \iff ( \forall-sort x ph0 ) ( \forall-sort y ph1 ) ) $. $}
${ $d x y $.
   fv-subst-left.0 $e |- ph0 $.
   fv-subst-left.1 $e #Substitution ph1 ph0 y x $.
   fv-subst-left.2 $e #Fresh y ph0 $.
   fv-subst-left $a |- ph1 $. $}
${ $d x y $.
   fv-subst-right.0 $e |- ph1 $.
   fv-subst-right.1 $e #Substitution ph1 ph0 y x $.
   fv-subst-right.2 $e #Fresh y ph0 $.
   fv-subst-right $a |- ph0 $. $}
lemma-ceil-compat-in-or $a |- ( \iff ( \ceil ( \or ph0 ph1 ) ) ( \or ( \ceil ph0 ) ( \ceil ph1 ) ) ) $.
lemma-x-and-ph-imp-not-ceil-x-and-not-ph $a |- ( \imp ( \and x ph0 ) ( \not ( \ceil ( \and x ( \not ph0 ) ) ) ) ) $.
lemma-curry-left $a |- ( \imp ( \imp ( \and ph0 ph1 ) ph2 ) ( \imp ph0 ( \imp ph1 ph2 ) ) ) $.
lemma-curry-right $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \and ph0 ph1 ) ph2 ) ) $.
${ rule-uncurry.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   rule-uncurry $a |- ( \imp ( \and ph0 ph1 ) ph2 ) $. $}
${ rule-curry.0 $e |- ( \imp ( \and ph0 ph1 ) ph2 ) $.
   rule-curry $a |- ( \imp ph0 ( \imp ph1 ph2 ) ) $. $}
${ prenex-exists-and-left.0 $e #Fresh x ph1 $.
   prenex-exists-and-left $a |- ( \imp ( \and ( \exists x ph0 ) ph1 ) ( \exists x ( \and ph0 ph1 ) ) ) $. $}
${ prenex-forall-and-left.0 $e #Fresh x ph1 $.
   prenex-forall-and-left $a |- ( \imp ( \and ( \forall x ph0 ) ph1 ) ( \forall x ( \and ph0 ph1 ) ) ) $. $}
lemma-disjoint-disj $a |- ( \imp ( \or ph0 ph1 ) ( \or ( \and ph0 ( \not ph1 ) ) ph1 ) ) $.
${ lemma-ph-imp-exists-x-and-ph.0 $e #Fresh x ph0 $.
   lemma-ph-imp-exists-x-and-ph $a |- ( \imp ph0 ( \exists x ( \and x ph0 ) ) ) $. $}
${ $d x ph0 $.
   lemma-app-context-imp-ceil.0 $e #ApplicationContext y ph1 $.
   lemma-app-context-imp-ceil.1 $e #Substitution ph2 ph1 ph0 y $.
   lemma-app-context-imp-ceil.2 $e #Substitution ph3 ph1 ( \exists x ( \and x ph0 ) ) y $.
   lemma-app-context-imp-ceil.3 $e #Substitution ph4 ph1 ( \and x ph0 ) y $.
   lemma-app-context-imp-ceil.4 $e |- ( \imp ph2 ph3 ) $.
   lemma-app-context-imp-ceil.5 $e |- ( \imp ph3 ( \exists x ph4 ) ) $.
   lemma-app-context-imp-ceil $a |- ( \imp ph2 ( \ceil ph0 ) ) $. $}
${ $d x ph0 $.
   lemma-ph-imp-ceil-ph $a |- ( \imp ph0 ( \ceil ph0 ) ) $. $}
${ $d x ph0 $.
   $d y sg0 $.
   $d y sg1 $.
   lemma-app-app-ph-imp-ceil-ph $a |- ( \imp ( \app sg0 ( \app sg1 ph0 ) ) ( \ceil ph0 ) ) $. $}
${ lemma-imp-compat-in-ceil.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-imp-compat-in-ceil $a |- ( \imp ( \ceil ph0 ) ( \ceil ph1 ) ) $. $}
${ lemma-imp-compat-in-floor.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-imp-compat-in-floor $a |- ( \imp ( \floor ph0 ) ( \floor ph1 ) ) $. $}
lemma-ceil2-imp-ceil $a |- ( \imp ( \ceil ( \ceil ph0 ) ) ( \ceil ph0 ) ) $.
lemma-floor-imp-floor2 $a |- ( \imp ( \floor ph0 ) ( \floor ( \floor ph0 ) ) ) $.
lemma-floor-elim-alt $a |- ( \imp ( \floor ph0 ) ph0 ) $.
${ lemma-floor-intro.0 $e |- ph0 $.
   lemma-floor-intro $a |- ( \floor ph0 ) $. $}
${ lemma-floor-elim.0 $e |- ( \floor ph0 ) $.
   lemma-floor-elim $a |- ph0 $. $}
lemma-floor-compat-in-and $a |- ( \iff ( \floor ( \and ph0 ph1 ) ) ( \and ( \floor ph0 ) ( \floor ph1 ) ) ) $.
lemma-floor-imp-floor $a |- ( \imp ( \floor ( \imp ph0 ph1 ) ) ( \imp ( \floor ph0 ) ( \floor ph1 ) ) ) $.
${ lemma-floor-imp-elim.0 $e |- ( \floor ( \imp ph0 ph1 ) ) $.
   lemma-floor-imp-elim $a |- ( \imp ( \floor ph0 ) ( \floor ph1 ) ) $. $}
${ lemma-in-sort.0 $e |- ( \in-sort ph1 ph0 ) $.
   lemma-in-sort $a |- ( \imp ph1 ( \inh ph0 ) ) $. $}
${ lemma-mp2.0 $e |- ph0 $.
   lemma-mp2.1 $e |- ph1 $.
   lemma-mp2.2 $e |- ( \imp ( \and ph0 ph1 ) ph2 ) $.
   lemma-mp2 $a |- ph2 $. $}
${ lemma-iff-intro-d.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   lemma-iff-intro-d.1 $e |- ( \imp ph0 ( \imp ph2 ph1 ) ) $.
   lemma-iff-intro-d $a |- ( \imp ph0 ( \iff ph1 ph2 ) ) $. $}
${ lemma-pmp2.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-pmp2.1 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   lemma-pmp2 $a |- ( \imp ph0 ph2 ) $. $}
${ lemma-imp-not-not.0 $e |- ( \imp ph1 ph0 ) $.
   lemma-imp-not-not $a |- ( \imp ( \not ph0 ) ( \not ph1 ) ) $. $}
${ lemma-double-not-ceil-alt.0 $e |- ( \imp ( \ceil ( \not ( \ceil ph0 ) ) ) ( \not ( \ceil ph0 ) ) ) $.
   lemma-double-not-ceil-alt $a |- ( \imp ( \ceil ph0 ) ( \not ( \ceil ( \not ( \ceil ph0 ) ) ) ) ) $. $}
${ lemma-not-ceil-elim.0 $e |- ( \not ph0 ) $.
   lemma-not-ceil-elim $a |- ( \not ( \ceil ph0 ) ) $. $}
lemma-and-ceil $a |- ( \eq ( \and ( \ceil x ) ph0 ) ph0 ) $.
lemma-or-and $a |- ( \eq ( \or ( \and ( \not ph1 ) ph0 ) ( \and ( \ceil ph1 ) ph0 ) ) ph0 ) $.
${ lemma-not-and-rewrite.0 $e |- ( \imp ph1 ( \not ph0 ) ) $.
   lemma-not-and-rewrite $a |- ( \not ( \and ph0 ph1 ) ) $. $}
${ lemma-eq-intro.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-eq-intro.1 $e |- ( \imp ph1 ph0 ) $.
   lemma-eq-intro $a |- ( \eq ph0 ph1 ) $. $}
${ lemma-eq-1.0 $e |- ( \imp ph1 ph0 ) $.
   lemma-eq-1 $a |- ( \eq ( \and ph0 ph1 ) ph1 ) $. $}
lemma-eq-imp $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ph0 ph1 ) ) $.
lemma-eq-reflexivity $a |- ( \eq ph0 ph0 ) $.
${ lemma-eq-symmetry.0 $e |- ( \eq ph1 ph0 ) $.
   lemma-eq-symmetry $a |- ( \eq ph0 ph1 ) $. $}
${ lemma-eq-transitivity.0 $e |- ( \eq ph0 ph1 ) $.
   lemma-eq-transitivity.1 $e |- ( \eq ph1 ph2 ) $.
   lemma-eq-transitivity $a |- ( \eq ph0 ph2 ) $. $}
${ lemma-eq-congruence-or.0 $e |- ( \eq ph0 ph2 ) $.
   lemma-eq-congruence-or.1 $e |- ( \eq ph1 ph3 ) $.
   lemma-eq-congruence-or $a |- ( \eq ( \or ph0 ph1 ) ( \or ph2 ph3 ) ) $. $}
${ lemma-eq-congruence-and.0 $e |- ( \eq ph0 ph2 ) $.
   lemma-eq-congruence-and.1 $e |- ( \eq ph1 ph3 ) $.
   lemma-eq-congruence-and $a |- ( \eq ( \and ph0 ph1 ) ( \and ph2 ph3 ) ) $. $}
${ lemma-eq-congruence-not.0 $e |- ( \eq ph0 ph1 ) $.
   lemma-eq-congruence-not $a |- ( \eq ( \not ph0 ) ( \not ph1 ) ) $. $}
${ lemma-eq-congruence-ceil.0 $e |- ( \eq ph0 ph1 ) $.
   lemma-eq-congruence-ceil $a |- ( \eq ( \ceil ph0 ) ( \ceil ph1 ) ) $. $}
${ lemma-prenex-forall-imp.0 $e #Fresh x ph1 $.
   lemma-prenex-forall-imp.1 $e |- ( \forall x ( \imp ph0 ph1 ) ) $.
   lemma-prenex-forall-imp $a |- ( \imp ( \exists x ph0 ) ph1 ) $. $}
lemma-i-giveup-on-naming-2 $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \imp ph3 ph1 ) ( \imp ph0 ( \imp ph3 ph2 ) ) ) ) $.
${ functional-substitution-var-same.0 $e #Fresh x ph0 $.
   functional-substitution-var-same.1 $e #Substitution ph2 ph1 ph0 x $.
   functional-substitution-var-same $a |- ( \imp ( \exists x ( \eq x ph0 ) ) ( \imp ( \forall x ph1 ) ph2 ) ) $. $}
${ fresh-in-eq.0 $e #Fresh xX ph0 $.
   fresh-in-eq.1 $e #Fresh xX ph1 $.
   fresh-in-eq $a #Fresh xX ( \eq ph0 ph1 ) $. $}
${ $d x y $.
   $d x ph0 $.
   functional-substitution-var-diff.0 $e #Fresh y ph0 $.
   functional-substitution-var-diff.1 $e #Substitution ph2 ph1 ph0 x $.
   functional-substitution-var-diff $a |- ( \imp ( \exists y ( \eq y ph0 ) ) ( \imp ( \forall x ph1 ) ph2 ) ) $. $}
${ $d z ph0 $.
   $d z ph1 $.
   $d z ph2 $.
   $d z y $.
   $d z x $.
   functional-substitution.0 $e #Fresh y ph0 $.
   functional-substitution.1 $e #Substitution ph2 ph1 ph0 x $.
   functional-substitution.2 $e #Substitution ph3 ph1 z x $.
   functional-substitution $a |- ( \imp ( \exists y ( \eq y ph0 ) ) ( \imp ( \forall x ph1 ) ph2 ) ) $. $}
${ lemma-imp-compat-in-exists.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-imp-compat-in-exists $a |- ( \imp ( \exists x ph0 ) ( \exists x ph1 ) ) $. $}
${ lemma-imp-compat-in-forall.0 $e |- ( \imp ph0 ph1 ) $.
   lemma-imp-compat-in-forall $a |- ( \imp ( \forall x ph0 ) ( \forall x ph1 ) ) $. $}
exists-and-elim $a |- ( \imp ( \exists x ( \and ph0 ph1 ) ) ( \and ( \exists x ph0 ) ( \exists x ph1 ) ) ) $.
${ rule-exists-and-elim.0 $e |- ( \exists x ( \and ph0 ph1 ) ) $.
   rule-exists-and-elim-left $a |- ( \exists x ph0 ) $.
   rule-exists-and-elim-right $a |- ( \exists x ph1 ) $. $}
${ singleton-inclusion.0 $e #Fresh y ph0 $.
   singleton-inclusion.1 $e #Fresh y ph1 $.
   singleton-inclusion $a |- ( \imp ( \exists y ( \and ( \included y ph1 ) ( \eq y ph0 ) ) ) ( \included ph0 ph1 ) ) $. $}
${ lemma-floor-intro-imp3.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   lemma-floor-intro-imp3 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \floor ph2 ) ) ) $. $}
${ lemma-floor-intro-imp3-alt.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   lemma-floor-intro-imp3-alt $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ph2 ) ) $. $}
${ lemma-floor-intro-imp4.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ph3 ) ) ) $.
   lemma-floor-intro-imp4 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ( \floor ph3 ) ) ) ) $. $}
${ lemma-floor-intro-imp4-alt.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ph3 ) ) ) $.
   lemma-floor-intro-imp4-alt $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ph3 ) ) ) $. $}
${ lemma-floor-intro-imp5.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ( \imp ph3 ph4 ) ) ) ) $.
   lemma-floor-intro-imp5 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ( \imp ( \floor ph3 ) ( \floor ph4 ) ) ) ) ) $. $}
${ lemma-floor-intro-imp6.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ( \imp ph3 ( \imp ph4 ph5 ) ) ) ) ) $.
   lemma-floor-intro-imp6 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ( \imp ( \floor ph3 ) ( \imp ( \floor ph4 ) ( \floor ph5 ) ) ) ) ) ) $. $}
in-sort-and-left-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \and ph1 ph2 ) ph0 ) ) $.
in-sort-and-right-alt $a |- ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \and ph1 ph2 ) ph0 ) ) $.
in-sort-or-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \or ph1 ph2 ) ph0 ) ) ) $.
${ in-sort-and-left.0 $e |- ( \in-sort ph1 ph0 ) $.
   in-sort-and-left $a |- ( \in-sort ( \and ph1 ph2 ) ph0 ) $. $}
${ in-sort-and-right.0 $e |- ( \in-sort ph2 ph0 ) $.
   in-sort-and-right $a |- ( \in-sort ( \and ph1 ph2 ) ph0 ) $. $}
${ in-sort-or.0 $e |- ( \in-sort ph1 ph0 ) $.
   in-sort-or.1 $e |- ( \in-sort ph2 ph0 ) $.
   in-sort-or $a |- ( \in-sort ( \or ph1 ph2 ) ph0 ) $. $}
in-sort-inh $a |- ( \in-sort ( \inh ph0 ) ph0 ) $.
eq-imp-included $a |- ( \imp ( \eq ph0 ph1 ) ( \included ph0 ph1 ) ) $.
${ fresh-in-in-sort.0 $e #Fresh xX ph0 $.
   fresh-in-in-sort.1 $e #Fresh xX ph1 $.
   fresh-in-in-sort $a #Fresh xX ( \in-sort ph0 ph1 ) $. $}
${ lemma-prenex-forall-or.0 $e #Fresh x ph1 $.
   lemma-prenex-forall-or $a |- ( \imp ( \forall x ( \or ph0 ph1 ) ) ( \or ( \forall x ph0 ) ph1 ) ) $. $}
${ lemma-prenex-forall-imp-alt.0 $e #Fresh x ph1 $.
   lemma-prenex-forall-imp-alt $a |- ( \imp ( \forall x ( \imp ph0 ph1 ) ) ( \imp ( \exists x ph0 ) ph1 ) ) $. $}
${ lemma-and-top-elim-in-sort.0 $e |- ( \in-sort ph1 ph0 ) $.
   lemma-and-top-elim-in-sort $a |- ( \eq ( \and ph1 ( \inh ph0 ) ) ph1 ) $. $}
lemma-eq-transitivity-alt $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph1 ph2 ) ( \eq ph0 ph2 ) ) ) $.
${ rule-weakening.0 $e |- ph1 $.
   rule-weakening $a |- ( \imp ph0 ph1 ) $. $}
weakening-imp2 $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph2 ph0 ) ( \imp ph2 ph1 ) ) ) $.
weakening-imp3 $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \imp ph3 ph0 ) ( \imp ( \imp ph3 ph1 ) ( \imp ph3 ph2 ) ) ) ) $.
weakening-imp4 $a |- ( \imp ( \imp ph0 ( \imp ph1 ( \imp ph2 ph3 ) ) ) ( \imp ( \imp ph4 ph0 ) ( \imp ( \imp ph4 ph1 ) ( \imp ( \imp ph4 ph2 ) ( \imp ph4 ph3 ) ) ) ) ) $.
${ rule-weakening-imp2.0 $e |- ( \imp ph0 ph1 ) $.
   rule-weakening-imp2 $a |- ( \imp ( \imp ph2 ph0 ) ( \imp ph2 ph1 ) ) $. $}
eq-compat-in-or $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph2 ph3 ) ( \eq ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) ) ) $.
eq-compat-in-and $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph2 ph3 ) ( \eq ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) ) ) $.
eq-compat-in-not $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ( \not ph0 ) ( \not ph1 ) ) ) $.
eq-compat-in-imp $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph2 ph3 ) ( \eq ( \imp ph0 ph2 ) ( \imp ph1 ph3 ) ) ) ) $.
${ rule-eq-compat-in-or.0 $e |- ( \eq ph0 ph1 ) $.
   rule-eq-compat-in-or.1 $e |- ( \eq ph2 ph3 ) $.
   rule-eq-compat-in-or $a |- ( \eq ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) $. $}
${ rule-eq-compat-in-and.0 $e |- ( \eq ph0 ph1 ) $.
   rule-eq-compat-in-and.1 $e |- ( \eq ph2 ph3 ) $.
   rule-eq-compat-in-and $a |- ( \eq ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) $. $}
${ rule-eq-compat-in-not.0 $e |- ( \eq ph0 ph1 ) $.
   rule-eq-compat-in-not $a |- ( \eq ( \not ph0 ) ( \not ph1 ) ) $. $}
${ rule-eq-compat-in-ceil.0 $e |- ( \eq ph0 ph1 ) $.
   rule-eq-compat-in-ceil $a |- ( \eq ( \ceil ph0 ) ( \ceil ph1 ) ) $. $}
${ rule-eq-compat-in-floor.0 $e |- ( \eq ph0 ph1 ) $.
   rule-eq-compat-in-floor $a |- ( \eq ( \floor ph0 ) ( \floor ph1 ) ) $. $}
${ lemma-floor-intro-alt.0 $e |- ( \imp ( \floor ph0 ) ph1 ) $.
   lemma-floor-intro-alt $a |- ( \imp ( \floor ph0 ) ( \floor ph1 ) ) $. $}
eq-symmetry $a |- ( \imp ( \eq ph1 ph0 ) ( \eq ph0 ph1 ) ) $.
eq-transitivity $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph1 ph2 ) ( \eq ph0 ph2 ) ) ) $.
eq-intro $a |- ( \imp ( \included ph0 ph1 ) ( \imp ( \included ph1 ph0 ) ( \eq ph0 ph1 ) ) ) $.
${ rule-eq-intro-hyp.0 $e |- ( \imp ph2 ( \included ph0 ph1 ) ) $.
   rule-eq-intro-hyp.1 $e |- ( \imp ph2 ( \included ph1 ph0 ) ) $.
   rule-eq-intro-hyp $a |- ( \imp ph2 ( \eq ph0 ph1 ) ) $. $}
${ rule-eq-transitivity-hyp.0 $e |- ( \imp ph3 ( \eq ph0 ph1 ) ) $.
   rule-eq-transitivity-hyp.1 $e |- ( \imp ph3 ( \eq ph1 ph2 ) ) $.
   rule-eq-transitivity-hyp $a |- ( \imp ph3 ( \eq ph0 ph2 ) ) $. $}
${ eq-elim-alt.0 $e #Substitution ph2 ph4 ph0 x $.
   eq-elim-alt.1 $e #Substitution ph3 ph4 ph1 x $.
   eq-elim-alt $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) ) $. $}
${ eq-elim-alt-hyp.0 $e #Substitution ph2 ph4 ph0 x $.
   eq-elim-alt-hyp.1 $e #Substitution ph3 ph4 ph1 x $.
   eq-elim-alt-hyp.2 $e |- ( \imp ph5 ( \eq ph0 ph1 ) ) $.
   eq-elim-alt-hyp $a |- ( \imp ph5 ( \eq ph2 ph3 ) ) $. $}
included-transitivity $a |- ( \imp ( \included ph0 ph1 ) ( \imp ( \included ph1 ph2 ) ( \included ph0 ph2 ) ) ) $.
${ rule-included-transitivity-hyp.0 $e |- ( \imp ph3 ( \included ph0 ph1 ) ) $.
   rule-included-transitivity-hyp.1 $e |- ( \imp ph3 ( \included ph1 ph2 ) ) $.
   rule-included-transitivity-hyp $a |- ( \imp ph3 ( \included ph0 ph2 ) ) $. $}
unit-sort-singleton $a |- ( \exists x ( \eq x ( \inh \unit-sort ) ) ) $.
unit-sort-nonempty $a |- ( \exists x ( \in-sort x \unit-sort ) ) $.
ceil-propagation-exists-left $a |- ( \imp ( \ceil ( \exists x ph0 ) ) ( \exists x ( \ceil ph0 ) ) ) $.
ceil-propagation-exists-right $a |- ( \imp ( \exists x ( \ceil ph0 ) ) ( \ceil ( \exists x ph0 ) ) ) $.
ceil-propagation-exists $a |- ( \iff ( \ceil ( \exists x ph0 ) ) ( \exists x ( \ceil ph0 ) ) ) $.
floor-propagation-forall-right $a |- ( \imp ( \floor ( \forall x ph0 ) ) ( \forall x ( \floor ph0 ) ) ) $.
floor-propagation-forall-left $a |- ( \imp ( \forall x ( \floor ph0 ) ) ( \floor ( \forall x ph0 ) ) ) $.
${ rule-eq-to-iff.0 $e |- ( \eq ph0 ph1 ) $.
   rule-eq-to-iff $a |- ( \iff ph0 ph1 ) $. $}
${ rule-iff-to-eq.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-to-eq $a |- ( \eq ph0 ph1 ) $. $}
${ rule-iff-compat-in-ceil.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-ceil $a |- ( \iff ( \ceil ph0 ) ( \ceil ph1 ) ) $. $}
${ rule-iff-compat-in-floor.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-floor $a |- ( \iff ( \floor ph0 ) ( \floor ph1 ) ) $. $}
${ rule-iff-compat-in-app.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-app.1 $e |- ( \iff ph2 ph3 ) $.
   rule-iff-compat-in-app $a |- ( \iff ( \app ph0 ph2 ) ( \app ph1 ph3 ) ) $. $}
${ rule-iff-compat-in-imp.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-imp.1 $e |- ( \iff ph2 ph3 ) $.
   rule-iff-compat-in-imp $a |- ( \iff ( \imp ph0 ph2 ) ( \imp ph1 ph3 ) ) $. $}
${ rule-iff-compat-in-iff.0 $e |- ( \iff ph0 ph2 ) $.
   rule-iff-compat-in-iff.1 $e |- ( \iff ph1 ph3 ) $.
   rule-iff-compat-in-iff $a |- ( \iff ( \iff ph0 ph1 ) ( \iff ph2 ph3 ) ) $. $}
${ rule-iff-compat-in-eq.0 $e |- ( \iff ph0 ph2 ) $.
   rule-iff-compat-in-eq.1 $e |- ( \iff ph1 ph3 ) $.
   rule-iff-compat-in-eq $a |- ( \iff ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) ) $. $}
${ rule-iff-compat-in-exists.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-exists $a |- ( \iff ( \exists x ph0 ) ( \exists x ph1 ) ) $. $}
${ rule-iff-compat-in-forall.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-forall $a |- ( \iff ( \forall x ph0 ) ( \forall x ph1 ) ) $. $}
${ rule-iff-compat-in-sorted-exists.0 $e |- ( \iff ph0 ph2 ) $.
   rule-iff-compat-in-sorted-exists.1 $e |- ( \iff ph1 ph3 ) $.
   rule-iff-compat-in-sorted-exists $a |- ( \iff ( \sorted-exists x ph0 ph1 ) ( \sorted-exists x ph2 ph3 ) ) $. $}
sorted-forall-to-sorted-exists $a |- ( \iff ( \sorted-forall x ph0 ph1 ) ( \not ( \sorted-exists x ph0 ( \not ph1 ) ) ) ) $.
${ rule-iff-compat-in-sorted-forall.0 $e |- ( \iff ph0 ph2 ) $.
   rule-iff-compat-in-sorted-forall.1 $e |- ( \iff ph1 ph3 ) $.
   rule-iff-compat-in-sorted-forall $a |- ( \iff ( \sorted-forall x ph0 ph1 ) ( \sorted-forall x ph2 ph3 ) ) $. $}
${ prenex-exists-and-right.0 $e #Fresh x ph1 $.
   prenex-exists-and-right $a |- ( \imp ( \exists x ( \and ph0 ph1 ) ) ( \and ( \exists x ph0 ) ph1 ) ) $. $}
${ prenex-exists-and.0 $e #Fresh x ph1 $.
   prenex-exists-and $a |- ( \iff ( \and ( \exists x ph0 ) ph1 ) ( \exists x ( \and ph0 ph1 ) ) ) $. $}
${ prenex-sorted-exists-and.0 $e #Fresh x ph2 $.
   prenex-sorted-exists-and $a |- ( \iff ( \and ( \sorted-exists x ph0 ph1 ) ph2 ) ( \sorted-exists x ph0 ( \and ph1 ph2 ) ) ) $. $}
${ lemma-prenex-forall-imp-right.0 $e #Fresh x ph0 $.
   lemma-prenex-forall-imp-right $a |- ( \iff ( \forall x ( \imp ph0 ph1 ) ) ( \imp ph0 ( \forall x ph1 ) ) ) $. $}
${ forall-not-to-not-exists.0 $e |- ( \forall x ( \not ph0 ) ) $.
   forall-not-to-not-exists $a |- ( \not ( \exists x ph0 ) ) $. $}
${ imp-compat-in-sorted-exists.0 $e |- ( \imp ph0 ph1 ) $.
   imp-compat-in-sorted-exists $a |- ( \imp ( \sorted-exists x ph2 ph0 ) ( \sorted-exists x ph2 ph1 ) ) $. $}
eq-compat-in-ceil $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ( \ceil ph0 ) ( \ceil ph1 ) ) ) $.
x-in-ceil-imp-ceil $a |- ( \imp ( \in x ( \ceil ph0 ) ) ( \ceil ph0 ) ) $.
${ weakened-mp.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   weakened-mp.1 $e |- ( \imp ph0 ph1 ) $.
   weakened-mp $a |- ( \imp ph0 ph2 ) $. $}
${ $d x ph1 $.
   forall-propagate-in-floor-imp $a |- ( \imp ( \forall x ( \floor ( \imp ph0 ph1 ) ) ) ( \floor ( \imp ( \exists x ph0 ) ph1 ) ) ) $. $}
${ lemma-imp-compat-in-exists-alt.0 $e #Fresh x ph0 $.
   lemma-imp-compat-in-exists-alt.1 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   lemma-imp-compat-in-exists-alt $a |- ( \imp ph0 ( \imp ( \exists x ph1 ) ( \exists x ph2 ) ) ) $. $}
${ imp-compat-in-eq-and.0 $e |- ( \imp ph0 ph1 ) $.
   imp-compat-in-eq-and $a |- ( \imp ( \eq ( \and ph0 ph2 ) ph2 ) ( \eq ( \and ph1 ph2 ) ph2 ) ) $. $}
${ lemma-prenex-exists-imp-right.0 $e #Fresh x ph0 $.
   lemma-prenex-exists-imp-right $a |- ( \imp ( \exists x ( \imp ph0 ph1 ) ) ( \imp ph0 ( \exists x ph1 ) ) ) $. $}
${ prenex-forall-iff-left.0 $e #Fresh x ph1 $.
   prenex-forall-iff-left $a |- ( \imp ( \forall x ( \iff ph0 ph1 ) ) ( \iff ( \forall x ph0 ) ph1 ) ) $. $}
restricted-inclusion $a |- ( \imp ( \included ph0 ph1 ) ( \eq ( \and ph1 ph0 ) ph0 ) ) $.
iff-transitivity $a |- ( \imp ( \iff ph0 ph1 ) ( \imp ( \iff ph1 ph2 ) ( \iff ph0 ph2 ) ) ) $.
${ prenex-forall-or-left.0 $e #Fresh x ph0 $.
   prenex-forall-or-left $a |- ( \imp ( \forall x ( \or ph0 ph1 ) ) ( \or ph0 ( \forall x ph1 ) ) ) $. $}
${ prenex-forall-or-right.0 $e #Fresh x ph0 $.
   prenex-forall-or-right $a |- ( \imp ( \or ph0 ( \forall x ph1 ) ) ( \forall x ( \or ph0 ph1 ) ) ) $. $}
${ rule-imp-compat-in-and-alt.0 $e |- ( \imp ph4 ( \imp ph0 ph1 ) ) $.
   rule-imp-compat-in-and-alt.1 $e |- ( \imp ph4 ( \imp ph2 ph3 ) ) $.
   rule-imp-compat-in-and-alt $a |- ( \imp ph4 ( \imp ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) ) $. $}
$c \kore-bottom $.
$c \kore-top $.
$c \kore-not $.
$c \kore-and $.
$c \kore-or $.
$c \kore-implies $.
$c \kore-iff $.
$c \kore-exists $.
$c \kore-forall $.
$c \kore-forall-sort $.
$c \kore-mu $.
$c \kore-nu $.
$c \kore-ceil $.
$c \kore-floor $.
$c \kore-equals $.
$c \kore-in $.
$c \kore-next $.
$c \kore-all-path-next $.
$c \kore-eventually $.
$c \kore-weak-eventually $.
$c \kore-always $.
$c \kore-well-founded $.
$c \kore-well-founded-alt $.
$c \kore-rewrites $.
$c \kore-rewrites-star $.
$c \kore-rewrites-plus $.
$c \kore-one-path-reaches-plus $.
$c \kore-one-path-reaches-star $.
$c \kore-circularity $.
$c \kore-non-terminating $.
$c \kore-all-path-next-nt $.
$c \kore-all-path-eventually $.
$c \kore-all-path-rewrites $.
$c \kore-all-path-rewrites-star $.
$c \kore-all-path-rewrites-plus $.
$c \kore-dv $.
$c \kore-valid $.
$c \kore-is-sort $.
$c \kore-inj $.
$c \kore-is-predicate $.
$c \kore-is-nonempty-sort $.
kore-exists-is-pattern $a #Pattern ( \kore-exists ph0 ph1 x ph2 ) $.
kore-exists-is-sugar $a #Notation ( \kore-exists ph0 ph1 x ph2 ) ( \and ( \sorted-exists x ph0 ph2 ) ( \inh ph1 ) ) $.
kore-forall-sort-is-pattern $a #Pattern ( \kore-forall-sort s0 ph0 ) $.
kore-forall-sort-is-sugar $a #Notation ( \kore-forall-sort s0 ph0 ) ( \forall-sort s0 ph0 ) $.
kore-valid-is-pattern $a #Pattern ( \kore-valid ph0 ph1 ) $.
kore-valid-is-sugar $a #Notation ( \kore-valid ph0 ph1 ) ( \eq ph1 ( \kore-top ph0 ) ) $.
kore-bottom-is-pattern $a #Pattern ( \kore-bottom ph0 ) $.
kore-bottom-is-sugar $a #Notation ( \kore-bottom ph0 ) \bot $.
kore-top-is-pattern $a #Pattern ( \kore-top ph0 ) $.
kore-top-is-sugar $a #Notation ( \kore-top ph0 ) ( \inh ph0 ) $.
kore-not-is-pattern $a #Pattern ( \kore-not ph0 ph1 ) $.
kore-not-is-sugar $a #Notation ( \kore-not ph0 ph1 ) ( \and ( \not ph1 ) ( \kore-top ph0 ) ) $.
kore-and-is-pattern $a #Pattern ( \kore-and ph0 ph1 ph2 ) $.
kore-and-is-sugar $a #Notation ( \kore-and ph0 ph1 ph2 ) ( \and ph1 ph2 ) $.
kore-or-is-pattern $a #Pattern ( \kore-or ph0 ph1 ph2 ) $.
kore-or-is-sugar $a #Notation ( \kore-or ph0 ph1 ph2 ) ( \or ph1 ph2 ) $.
kore-implies-is-pattern $a #Pattern ( \kore-implies ph0 ph1 ph2 ) $.
kore-implies-is-sugar $a #Notation ( \kore-implies ph0 ph1 ph2 ) ( \kore-or ph0 ( \kore-not ph0 ph1 ) ph2 ) $.
kore-iff-is-pattern $a #Pattern ( \kore-iff ph0 ph1 ph2 ) $.
kore-iff-is-sugar $a #Notation ( \kore-iff ph0 ph1 ph2 ) ( \kore-and ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ph2 ph1 ) ) $.
kore-ceil-is-pattern $a #Pattern ( \kore-ceil ph0 ph1 ph2 ) $.
kore-ceil-is-sugar $a #Notation ( \kore-ceil ph0 ph1 ph2 ) ( \and ( \ceil ph2 ) ( \kore-top ph1 ) ) $.
kore-floor-is-pattern $a #Pattern ( \kore-floor ph0 ph1 ph2 ) $.
kore-floor-is-sugar $a #Notation ( \kore-floor ph0 ph1 ph2 ) ( \kore-not ph1 ( \kore-ceil ph0 ph1 ( \kore-not ph0 ph2 ) ) ) $.
kore-equals-is-pattern $a #Pattern ( \kore-equals ph0 ph1 ph2 ph3 ) $.
kore-equals-is-sugar $a #Notation ( \kore-equals ph0 ph1 ph2 ph3 ) ( \kore-floor ph0 ph1 ( \kore-iff ph0 ph2 ph3 ) ) $.
kore-in-is-pattern $a #Pattern ( \kore-in ph0 ph1 ph2 ph3 ) $.
kore-in-is-sugar $a #Notation ( \kore-in ph0 ph1 ph2 ph3 ) ( \kore-floor ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) $.
$c \kore-next-symbol $.
kore-next-is-symbol $a #Symbol \kore-next-symbol $.
kore-next-is-pattern $a #Pattern ( \kore-next ph0 ph1 ) $.
kore-next-is-sugar $a #Notation ( \kore-next ph0 ph1 ) ( \app \kore-next-symbol ph1 ) $.
kore-next-sorting $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \kore-next ph0 ph1 ) ph0 ) ) $.
${ kore-mu-is-pattern.0 $e #Positive X ph1 $.
   kore-mu-is-pattern $a #Pattern ( \kore-mu ph0 X ph1 ) $. $}
kore-mu-is-sugar $a #Notation ( \kore-mu ph0 X ph1 ) ( \and ( \mu X ph1 ) ( \inh ph0 ) ) $.
${ kore-nu-is-pattern.0 $e #Positive X ph1 $.
   kore-nu-is-pattern $a #Pattern ( \kore-nu ph0 X ph1 ) $. $}
${ kore-nu-is-sugar.0 $e #Substitution ph2 ph1 ( \kore-not ph0 X ) X $.
   kore-nu-is-sugar $a #Notation ( \kore-nu ph0 X ph1 ) ( \kore-not ph0 ( \kore-mu ph0 X ( \kore-not ph0 ph2 ) ) ) $. $}
kore-all-path-next-is-pattern $a #Pattern ( \kore-all-path-next ph0 ph1 ) $.
kore-all-path-next-is-sugar $a #Notation ( \kore-all-path-next ph0 ph1 ) ( \kore-not ph0 ( \kore-next ph0 ( \kore-not ph0 ph1 ) ) ) $.
kore-eventually-is-pattern $a #Pattern ( \kore-eventually ph0 ph1 ) $.
${ $d X ph0 $.
   $d X ph1 $.
   kore-eventually-is-sugar $a #Notation ( \kore-eventually ph0 ph1 ) ( \kore-mu ph0 X ( \kore-or ph0 ph1 ( \kore-next ph0 X ) ) ) $. $}
kore-weak-eventually-is-pattern $a #Pattern ( \kore-weak-eventually ph0 ph1 ) $.
${ $d X ph0 $.
   $d X ph1 $.
   kore-weak-eventually-is-sugar $a #Notation ( \kore-weak-eventually ph0 ph1 ) ( \kore-not ph0 ( \kore-mu ph0 X ( \kore-not ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-not ph0 X ) ) ) ) ) ) $. $}
kore-always-is-pattern $a #Pattern ( \kore-always ph0 ph1 ) $.
${ $d X ph0 $.
   $d X ph1 $.
   kore-always-is-sugar $a #Notation ( \kore-always ph0 ph1 ) ( \kore-not ph0 ( \kore-mu ph0 X ( \kore-not ph0 ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ( \kore-not ph0 X ) ) ) ) ) ) $. $}
kore-well-founded-is-pattern $a #Pattern ( \kore-well-founded ph0 ) $.
${ $d X ph0 $.
   kore-well-founded-is-sugar $a #Notation ( \kore-well-founded ph0 ) ( \kore-mu ph0 X ( \kore-all-path-next ph0 X ) ) $. $}
kore-well-founded-alt-is-pattern $a #Pattern ( \kore-well-founded-alt ph0 ) $.
${ $d X ph0 $.
   kore-well-founded-alt-is-sugar $a #Notation ( \kore-well-founded-alt ph0 ) ( \kore-mu ph0 X ( \kore-all-path-next ph0 ( \kore-always ph0 X ) ) ) $. $}
kore-rewrites-is-pattern $a #Pattern ( \kore-rewrites ph0 ph1 ph2 ) $.
kore-rewrites-is-sugar $a #Notation ( \kore-rewrites ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-next ph0 ph2 ) ) $.
kore-rewrites-star-is-pattern $a #Pattern ( \kore-rewrites-star ph0 ph1 ph2 ) $.
kore-rewrites-star-is-sugar $a #Notation ( \kore-rewrites-star ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-eventually ph0 ph2 ) ) $.
kore-rewrites-plus-is-pattern $a #Pattern ( \kore-rewrites-plus ph0 ph1 ph2 ) $.
kore-rewrites-plus-is-sugar $a #Notation ( \kore-rewrites-plus ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-next ph0 ( \kore-eventually ph0 ph2 ) ) ) $.
kore-one-path-reaches-star-is-pattern $a #Pattern ( \kore-one-path-reaches-star ph0 ph1 ph2 ) $.
kore-one-path-reaches-star-is-sugar $a #Notation ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) $.
kore-one-path-reaches-plus-is-pattern $a #Pattern ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) $.
kore-one-path-reaches-plus-is-sugar $a #Notation ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph2 ) ) ) $.
kore-circularity-is-pattern $a #Pattern ( \kore-circularity ph0 ph1 ) $.
kore-circularity-is-sugar $a #Notation ( \kore-circularity ph0 ph1 ) ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) $.
kore-non-terminating-is-pattern $a #Pattern ( \kore-non-terminating ph0 ) $.
kore-non-terminating-is-sugar $a #Notation ( \kore-non-terminating ph0 ) ( \kore-next ph0 ( \kore-top ph0 ) ) $.
kore-all-path-next-nt-is-pattern $a #Pattern ( \kore-all-path-next-nt ph0 ph1 ) $.
kore-all-path-next-nt-is-sugar $a #Notation ( \kore-all-path-next-nt ph0 ph1 ) ( \kore-and ph0 ( \kore-all-path-next ph0 ph1 ) ( \kore-non-terminating ph0 ) ) $.
kore-all-path-eventually-is-pattern $a #Pattern ( \kore-all-path-eventually ph0 ph1 ) $.
${ $d X ph0 $.
   $d X ph1 $.
   kore-all-path-eventually-is-sugar $a #Notation ( \kore-all-path-eventually ph0 ph1 ) ( \kore-mu ph0 X ( \kore-or ph0 ph1 ( \kore-all-path-next-nt ph0 X ) ) ) $. $}
kore-all-path-rewrites-is-pattern $a #Pattern ( \kore-all-path-rewrites ph0 ph1 ph2 ) $.
kore-all-path-rewrites-is-sugar $a #Notation ( \kore-all-path-rewrites ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-all-path-next-nt ph0 ph2 ) ) $.
kore-all-path-rewrites-star-is-pattern $a #Pattern ( \kore-all-path-rewrites-star ph0 ph1 ph2 ) $.
kore-all-path-rewrites-star-is-sugar $a #Notation ( \kore-all-path-rewrites-star ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-all-path-eventually ph0 ph2 ) ) $.
kore-all-path-rewrites-plus-is-pattern $a #Pattern ( \kore-all-path-rewrites-plus ph0 ph1 ph2 ) $.
kore-all-path-rewrites-plus-is-sugar $a #Notation ( \kore-all-path-rewrites-plus ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ( \kore-all-path-next-nt ph0 ( \kore-all-path-eventually ph0 ph2 ) ) ) $.
$c \kore-dv-symbol $.
kore-dv-is-symbol $a #Symbol \kore-dv-symbol $.
kore-dv-is-pattern $a #Pattern ( \kore-dv ph0 ph1 ) $.
kore-dv-is-sugar $a #Notation ( \kore-dv ph0 ph1 ) ( \app ( \app \kore-dv-symbol ph0 ) ph1 ) $.
kore-dv-sorting $a |- ( \in-sort ( \kore-dv ph0 ph1 ) ph0 ) $.
kore-is-sort-is-pattern $a #Pattern ( \kore-is-sort ph0 ) $.
${ $d s0 ph0 $.
   kore-is-sort-is-sugar $a #Notation ( \kore-is-sort ph0 ) ( \exists-sort s0 ( \eq s0 ph0 ) ) $. $}
kore-forall-is-pattern $a #Pattern ( \kore-forall ph0 ph1 x ph2 ) $.
kore-forall-is-sugar $a #Notation ( \kore-forall ph0 ph1 x ph2 ) ( \kore-not ph1 ( \kore-exists ph0 ph1 x ( \kore-not ph1 ph2 ) ) ) $.
$c \kore-inj-symbol $.
kore-inj-is-symbol $a #Symbol \kore-inj-symbol $.
kore-inj-is-pattern $a #Pattern ( \kore-inj ph0 ph1 ph2 ) $.
kore-inj-is-sugar $a #Notation ( \kore-inj ph0 ph1 ph2 ) ( \app ( \app ( \app \kore-inj-symbol ph0 ) ph1 ) ph2 ) $.
kore-inj-id $a |- ( \eq ( \kore-inj ph0 ph1 ph2 ) ph2 ) $.
kore-is-predicate-is-pattern $a #Pattern ( \kore-is-predicate ph0 ph1 ) $.
kore-is-predicate-is-sugar $a #Notation ( \kore-is-predicate ph0 ph1 ) ( \or ( \kore-valid ph0 ph1 ) ( \is-bot ph1 ) ) $.
kore-is-nonempty-sort-is-pattern $a #Pattern ( \kore-is-nonempty-sort ph0 ) $.
kore-is-nonempty-sort-is-sugar $a #Notation ( \kore-is-nonempty-sort ph0 ) ( \ceil ( \inh ph0 ) ) $.
${ $d xX y $.
   $d xX ph1 $.
   $d y ph6 $.
   substitution-kore-exists.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-exists.1 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-exists $a #Substitution ( \kore-exists ph0 ph1 y ph2 ) ( \kore-exists ph3 ph1 y ph5 ) ph6 xX $. $}
${ $d xX y $.
   $d y ph6 $.
   substitution-kore-exists-alt.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-exists-alt.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-exists-alt.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-exists-alt $a #Substitution ( \kore-exists ph0 ph1 y ph2 ) ( \kore-exists ph3 ph4 y ph5 ) ph6 xX $. $}
${ $d x ph1 $.
   substitution-kore-exists-shadowed $a #Substitution ( \kore-exists ph0 ph1 x ph2 ) ( \kore-exists ph0 ph1 x ph2 ) ph3 x $. $}
${ $d xX x $.
   $d x ph2 $.
   substitution-kore-forall-sort.0 $e #Substitution ph0 ph1 ph2 xX $.
   substitution-kore-forall-sort $a #Substitution ( \kore-forall-sort x ph0 ) ( \kore-forall-sort x ph1 ) ph2 xX $. $}
substitution-kore-forall-sort-shadowed $a #Substitution ( \kore-forall-sort x ph0 ) ( \kore-forall-sort x ph0 ) ph1 x $.
${ substitution-kore-valid.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-valid.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-valid $a #Substitution ( \kore-valid ph0 ph1 ) ( \kore-valid ph2 ph3 ) ph4 xX $. $}
${ substitution-kore-bottom.0 $e #Substitution ph0 ph1 ph2 xX $.
   substitution-kore-bottom $a #Substitution ( \kore-bottom ph0 ) ( \kore-bottom ph1 ) ph2 xX $. $}
${ substitution-kore-top.0 $e #Substitution ph0 ph1 ph2 xX $.
   substitution-kore-top $a #Substitution ( \kore-top ph0 ) ( \kore-top ph1 ) ph2 xX $. $}
${ substitution-kore-not.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-not.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-not $a #Substitution ( \kore-not ph0 ph1 ) ( \kore-not ph2 ph3 ) ph4 xX $. $}
${ substitution-kore-and.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-and.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-and.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-and $a #Substitution ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-or.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-or.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-or.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-or $a #Substitution ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-implies.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-implies.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-implies.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-implies $a #Substitution ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-ceil.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-ceil.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-ceil.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-ceil $a #Substitution ( \kore-ceil ph0 ph1 ph2 ) ( \kore-ceil ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-floor.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-floor.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-floor.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-floor $a #Substitution ( \kore-floor ph0 ph1 ph2 ) ( \kore-floor ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-equals.0 $e #Substitution ph0 ph4 ph8 xX $.
   substitution-kore-equals.1 $e #Substitution ph1 ph5 ph8 xX $.
   substitution-kore-equals.2 $e #Substitution ph2 ph6 ph8 xX $.
   substitution-kore-equals.3 $e #Substitution ph3 ph7 ph8 xX $.
   substitution-kore-equals $a #Substitution ( \kore-equals ph0 ph1 ph2 ph3 ) ( \kore-equals ph4 ph5 ph6 ph7 ) ph8 xX $. $}
${ substitution-kore-in.0 $e #Substitution ph0 ph4 ph8 xX $.
   substitution-kore-in.1 $e #Substitution ph1 ph5 ph8 xX $.
   substitution-kore-in.2 $e #Substitution ph2 ph6 ph8 xX $.
   substitution-kore-in.3 $e #Substitution ph3 ph7 ph8 xX $.
   substitution-kore-in $a #Substitution ( \kore-in ph0 ph1 ph2 ph3 ) ( \kore-in ph4 ph5 ph6 ph7 ) ph8 xX $. $}
${ substitution-kore-next.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-next.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-next $a #Substitution ( \kore-next ph0 ph1 ) ( \kore-next ph2 ph3 ) ph4 xX $. $}
${ substitution-kore-rewrites.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-rewrites.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-rewrites.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-rewrites $a #Substitution ( \kore-rewrites ph0 ph1 ph2 ) ( \kore-rewrites ph3 ph4 ph5 ) ph6 xX $. $}
${ $d X xX $.
   $d X ph4 $.
   substitution-kore-mu.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-mu.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-mu.2 $e #Positive X ph1 $.
   substitution-kore-mu.3 $e #Positive X ph3 $.
   substitution-kore-mu $a #Substitution ( \kore-mu ph0 X ph1 ) ( \kore-mu ph2 X ph3 ) ph4 xX $. $}
${ $d Y xX $.
   $d Y ph0 $.
   $d Y ph1 $.
   $d Y ph2 $.
   $d Y ph3 $.
   $d Y ph4 $.
   substitution-kore-eventually.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-eventually.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-eventually $a #Substitution ( \kore-eventually ph0 ph1 ) ( \kore-eventually ph2 ph3 ) ph4 xX $. $}
${ $d Y xX $.
   $d Y ph0 $.
   $d Y ph1 $.
   $d Y ph2 $.
   $d Y ph3 $.
   $d Y ph4 $.
   substitution-kore-weak-eventually.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-weak-eventually.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-weak-eventually $a #Substitution ( \kore-weak-eventually ph0 ph1 ) ( \kore-weak-eventually ph2 ph3 ) ph4 xX $. $}
${ $d Y xX $.
   $d Y ph0 $.
   $d Y ph1 $.
   $d Y ph2 $.
   $d Y ph3 $.
   $d Y ph4 $.
   substitution-kore-always.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-always.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-always $a #Substitution ( \kore-always ph0 ph1 ) ( \kore-always ph2 ph3 ) ph4 xX $. $}
${ substitution-kore-rewrites-star.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-rewrites-star.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-rewrites-star.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-rewrites-star $a #Substitution ( \kore-rewrites-star ph0 ph1 ph2 ) ( \kore-rewrites-star ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-rewrites-plus.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-rewrites-plus.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-rewrites-plus.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-rewrites-plus $a #Substitution ( \kore-rewrites-plus ph0 ph1 ph2 ) ( \kore-rewrites-plus ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-one-path-reaches-star.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-one-path-reaches-star.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-one-path-reaches-star.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-one-path-reaches-star $a #Substitution ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ( \kore-one-path-reaches-star ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-one-path-reaches-plus.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-one-path-reaches-plus.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-one-path-reaches-plus.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-one-path-reaches-plus $a #Substitution ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ( \kore-one-path-reaches-plus ph3 ph4 ph5 ) ph6 xX $. $}
${ substitution-kore-dv.0 $e #Substitution ph0 ph2 ph4 xX $.
   substitution-kore-dv.1 $e #Substitution ph1 ph3 ph4 xX $.
   substitution-kore-dv $a #Substitution ( \kore-dv ph0 ph1 ) ( \kore-dv ph2 ph3 ) ph4 xX $. $}
${ $d xX y $.
   $d xX ph1 $.
   $d y ph6 $.
   substitution-kore-forall.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-forall.1 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-forall $a #Substitution ( \kore-forall ph0 ph1 y ph2 ) ( \kore-forall ph3 ph1 y ph5 ) ph6 xX $. $}
${ $d x ph1 $.
   substitution-kore-forall-shadowed $a #Substitution ( \kore-forall ph0 ph1 x ph2 ) ( \kore-forall ph0 ph1 x ph2 ) ph3 x $. $}
${ substitution-kore-inj.0 $e #Substitution ph0 ph3 ph6 xX $.
   substitution-kore-inj.1 $e #Substitution ph1 ph4 ph6 xX $.
   substitution-kore-inj.2 $e #Substitution ph2 ph5 ph6 xX $.
   substitution-kore-inj $a #Substitution ( \kore-inj ph0 ph1 ph2 ) ( \kore-inj ph3 ph4 ph5 ) ph6 xX $. $}
${ $d x ph0 $.
   $d x ph1 $.
   $d x ph2 $.
   $d x xX $.
   substitution-kore-is-sort.0 $e #Substitution ph0 ph1 ph2 xX $.
   substitution-kore-is-sort $a #Substitution ( \kore-is-sort ph0 ) ( \kore-is-sort ph1 ) ph2 xX $. $}
${ notation-kore-valid.0 $e #Notation ph0 ph2 $.
   notation-kore-valid.1 $e #Notation ph1 ph3 $.
   notation-kore-valid $a #Notation ( \kore-valid ph0 ph1 ) ( \kore-valid ph2 ph3 ) $. $}
${ notation-kore-next.0 $e #Notation ph0 ph2 $.
   notation-kore-next.1 $e #Notation ph1 ph3 $.
   notation-kore-next $a #Notation ( \kore-next ph0 ph1 ) ( \kore-next ph2 ph3 ) $. $}
${ notation-kore-or.0 $e #Notation ph0 ph3 $.
   notation-kore-or.1 $e #Notation ph1 ph4 $.
   notation-kore-or.2 $e #Notation ph2 ph5 $.
   notation-kore-or $a #Notation ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph3 ph4 ph5 ) $. $}
${ notation-kore-implies.0 $e #Notation ph0 ph3 $.
   notation-kore-implies.1 $e #Notation ph1 ph4 $.
   notation-kore-implies.2 $e #Notation ph2 ph5 $.
   notation-kore-implies $a #Notation ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph3 ph4 ph5 ) $. $}
${ notation-kore-not.0 $e #Notation ph0 ph2 $.
   notation-kore-not.1 $e #Notation ph1 ph3 $.
   notation-kore-not $a #Notation ( \kore-not ph0 ph1 ) ( \kore-not ph2 ph3 ) $. $}
${ positive-in-kore-not.0 $e #Positive xX ph0 $.
   positive-in-kore-not.1 $e #Negative xX ph1 $.
   positive-in-kore-not $a #Positive xX ( \kore-not ph0 ph1 ) $. $}
${ negative-in-kore-not.0 $e #Negative xX ph0 $.
   negative-in-kore-not.1 $e #Positive xX ph1 $.
   negative-in-kore-not $a #Negative xX ( \kore-not ph0 ph1 ) $. $}
${ positive-in-kore-next.0 $e #Positive xX ph0 $.
   positive-in-kore-next.1 $e #Positive xX ph1 $.
   positive-in-kore-next $a #Positive xX ( \kore-next ph0 ph1 ) $. $}
${ negative-in-kore-next.0 $e #Negative xX ph0 $.
   negative-in-kore-next.1 $e #Negative xX ph1 $.
   negative-in-kore-next $a #Negative xX ( \kore-next ph0 ph1 ) $. $}
${ $d X xX ph0 $.
   $d X ph1 $.
   positive-in-kore-always.0 $e #Positive xX ph1 $.
   positive-in-kore-always $a #Positive xX ( \kore-always ph0 ph1 ) $. $}
${ $d X xX ph0 $.
   $d X ph1 $.
   negative-in-kore-always.0 $e #Negative xX ph1 $.
   negative-in-kore-always $a #Negative xX ( \kore-always ph0 ph1 ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   $d X ph2 $.
   $d X ph3 $.
   notation-kore-always.0 $e #Notation ph0 ph2 $.
   notation-kore-always.1 $e #Notation ph1 ph3 $.
   notation-kore-always $a #Notation ( \kore-always ph0 ph1 ) ( \kore-always ph2 ph3 ) $. $}
in-vs-include-lemma-0 $a |- ( \imp ph0 ( \or ( \and ph0 ( \not ph1 ) ) ( \and ph0 ph1 ) ) ) $.
in-vs-include-lemma-1 $a |- ( \imp ( \not ( \imp ph0 ph1 ) ) ( \and ph0 ( \not ph1 ) ) ) $.
in-vs-include-lemma-2 $a |- ( \imp ( \and ph0 ( \not ph1 ) ) ( \not ( \imp ph0 ph1 ) ) ) $.
in-imp-include $a |- ( \imp ( \in x ph0 ) ( \included x ph0 ) ) $.
include-imp-in $a |- ( \imp ( \included x ph0 ) ( \in x ph0 ) ) $.
in-vs-include $a |- ( \iff ( \in x ph0 ) ( \included x ph0 ) ) $.
${ membership-intro.0 $e |- ph0 $.
   membership-intro $a |- ( \forall x ( \in x ph0 ) ) $. $}
${ membership-elim.0 $e #Fresh x ph0 $.
   membership-elim.1 $e |- ( \forall x ( \in x ph0 ) ) $.
   membership-elim $a |- ph0 $. $}
${ $d x y $.
   membership-exists $a |- ( \iff ( \in x ( \exists y ph0 ) ) ( \exists y ( \in x ph0 ) ) ) $. $}
${ rule-imp-compat-in-in.0 $e |- ( \imp ph0 ph1 ) $.
   rule-imp-compat-in-in $a |- ( \imp ( \in x ph0 ) ( \in x ph1 ) ) $. $}
membership-or $a |- ( \iff ( \in x ( \or ph0 ph1 ) ) ( \or ( \in x ph0 ) ( \in x ph1 ) ) ) $.
membership-not $a |- ( \iff ( \in x ( \not ph0 ) ) ( \not ( \in x ph0 ) ) ) $.
membership-and $a |- ( \iff ( \in x ( \and ph0 ph1 ) ) ( \and ( \in x ph0 ) ( \in x ph1 ) ) ) $.
membership-var-left-aux-0 $a |- ( \imp ( \not ( \iff ph0 ph1 ) ) ( \or ( \and ph0 ( \not ph1 ) ) ( \and ( \not ph0 ) ph1 ) ) ) $.
membership-var-left-aux-1 $a |- ( \imp ( \ceil ( \and x y ) ) ( \not ( \ceil ( \and x ( \not y ) ) ) ) ) $.
membership-var-left-aux-2 $a |- ( \imp ( \ceil ( \and x y ) ) ( \not ( \ceil ( \and ( \not x ) y ) ) ) ) $.
membership-var-left $a |- ( \imp ( \in x y ) ( \eq x y ) ) $.
membership-var-right-aux $a |- ( \imp ( \or ph0 ph1 ) ( \or ( \not ( \iff ph0 ph1 ) ) ( \and ph0 ph1 ) ) ) $.
membership-var-right $a |- ( \imp ( \eq x y ) ( \in x y ) ) $.
membership-var $a |- ( \iff ( \in x y ) ( \eq x y ) ) $.
membership-imp $a |- ( \iff ( \in x ( \imp ph0 ph1 ) ) ( \imp ( \in x ph0 ) ( \in x ph1 ) ) ) $.
${ rule-membership-imp-right.0 $e |- ( \imp ( \in x ph0 ) ( \in x ph1 ) ) $.
   rule-membership-imp-right $a |- ( \in x ( \imp ph0 ph1 ) ) $. $}
ceil-and-x-ceil-ph-imp-ceil-ph $a |- ( \imp ( \ceil ( \and x ( \ceil ph0 ) ) ) ( \ceil ph0 ) ) $.
membership-symbol-ceil-aux-aux-0 $a |- ( \imp ( \ceil ( \and x ph0 ) ) ( \floor ( \ceil ( \and x ph0 ) ) ) ) $.
membership-symbol-ceil-aux-0 $a |- ( \imp ( \ceil ( \and x ph0 ) ) ( \ceil ( \and y ( \ceil ( \and x ph0 ) ) ) ) ) $.
${ $d y ph0 $.
   membership-symbol-ceil-right-aux-0 $a |- ( \imp ( \exists y ( \and ( \ceil ( \and y ph0 ) ) y ) ) ph0 ) $. $}
${ $d x y $.
   $d y ph0 $.
   membership-symbol-ceil-right $a |- ( \imp ( \exists y ( \in y ph0 ) ) ( \in x ( \ceil ph0 ) ) ) $. $}
${ $d x y ph0 $.
   $d y ph0 $.
   membership-symbol-ceil-left-aux-0 $a |- ( \imp ph0 ( \exists y ( \ceil ( \and y ph0 ) ) ) ) $. $}
${ $d x y $.
   $d y ph0 $.
   membership-symbol-ceil-left $a |- ( \imp ( \in x ( \ceil ph0 ) ) ( \exists y ( \in y ph0 ) ) ) $. $}
${ $d x y $.
   $d x ph0 $.
   $d y ph0 $.
   lemma-ceil-imp-floor-ceil $a |- ( \imp ( \ceil ph0 ) ( \floor ( \ceil ph0 ) ) ) $. $}
ceil-floor-imp-floor $a |- ( \imp ( \ceil ( \floor ph0 ) ) ( \floor ph0 ) ) $.
${ nonempty-is-not-bot.0 $e |- ( \ceil ph0 ) $.
   nonempty-is-not-bot $a |- ( \not ( \eq ph0 \bot ) ) $. $}
${ $d x y ph0 $.
   functional-imp-nonempty $a |- ( \imp ( \exists x ( \eq x ph0 ) ) ( \ceil ph0 ) ) $. $}
${ $d x ph0 $.
   functional-imp-nonempty-alt.0 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
   functional-imp-nonempty-alt $a |- ( \imp th0 ( \ceil ph0 ) ) $. $}
lemma-floor-is-predicate $a |- ( \is-predicate ( \floor ph0 ) ) $.
not-bot-to-top $a |- ( \imp ( \is-bot ph0 ) ( \is-top ( \not ph0 ) ) ) $.
not-top-to-bot $a |- ( \imp ( \is-top ph0 ) ( \is-bot ( \not ph0 ) ) ) $.
predicate-intro-not $a |- ( \imp ( \is-predicate ph0 ) ( \is-predicate ( \not ph0 ) ) ) $.
${ rule-iff-compat-in-predicate.0 $e |- ( \iff ph0 ph1 ) $.
   rule-iff-compat-in-predicate $a |- ( \iff ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) $. $}
ph-or-top-to-top $a |- ( \imp ( \is-top ph0 ) ( \is-top ( \or ph0 ph1 ) ) ) $.
bot-or-bot-to-bot $a |- ( \imp ( \and ( \is-bot ph0 ) ( \is-bot ph1 ) ) ( \is-bot ( \or ph0 ph1 ) ) ) $.
predicate-case2 $a |- ( \imp ( \and ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) ( \or ( \and ( \is-bot ph0 ) ( \is-bot ph1 ) ) ( \or ( \and ( \is-bot ph0 ) ( \is-top ph1 ) ) ( \or ( \and ( \is-top ph0 ) ( \is-bot ph1 ) ) ( \and ( \is-top ph0 ) ( \is-top ph1 ) ) ) ) ) ) $.
predicate-intro-or $a |- ( \imp ( \and ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) ( \is-predicate ( \or ph0 ph1 ) ) ) $.
predicate-intro-imp $a |- ( \imp ( \and ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) ( \is-predicate ( \imp ph0 ph1 ) ) ) $.
${ rule-predicate-intro-imp.0 $e |- ( \is-predicate ph0 ) $.
   rule-predicate-intro-imp.1 $e |- ( \is-predicate ph1 ) $.
   rule-predicate-intro-imp $a |- ( \is-predicate ( \imp ph0 ph1 ) ) $. $}
lemma-bot-imp-floor $a |- ( \imp ( \is-bot ph0 ) ( \imp ph0 ( \floor ph0 ) ) ) $.
lemma-top-imp-floor $a |- ( \imp ( \is-top ph0 ) ( \imp ph0 ( \floor ph0 ) ) ) $.
lemma-predicate-floor-alt $a |- ( \imp ( \is-predicate ph0 ) ( \imp ph0 ( \floor ph0 ) ) ) $.
${ lemma-predicate-floor.0 $e |- ( \is-predicate ph0 ) $.
   lemma-predicate-floor $a |- ( \imp ph0 ( \floor ph0 ) ) $. $}
lemma-imp-floor-imp-floor $a |- ( \imp ( \imp ( \floor ph0 ) ( \floor ph1 ) ) ( \floor ( \imp ( \floor ph0 ) ( \floor ph1 ) ) ) ) $.
lemma-ceil-is-predicate $a |- ( \is-predicate ( \ceil ph0 ) ) $.
${ is-predicate-elim.0 $e |- ( \is-predicate ph0 ) $.
   is-predicate-elim.1 $e #Substitution ph2 ph1 \bot x $.
   is-predicate-elim.2 $e #Substitution ph3 ph1 \top x $.
   is-predicate-elim.3 $e #Substitution ph4 ph1 ph0 x $.
   is-predicate-elim.4 $e |- ph2 $.
   is-predicate-elim.5 $e |- ph3 $.
   is-predicate-elim $a |- ph4 $. $}
forall-predicate-case $a |- ( \imp ( \forall x ( \is-predicate ph0 ) ) ( \or ( \exists x ( \is-top ph0 ) ) ( \forall x ( \is-bot ph0 ) ) ) ) $.
predicate-intro-exists $a |- ( \imp ( \forall x ( \is-predicate ph0 ) ) ( \is-predicate ( \exists x ph0 ) ) ) $.
${ rule-predicate-intro-exists.0 $e |- ( \is-predicate ph0 ) $.
   rule-predicate-intro-exists $a |- ( \is-predicate ( \exists x ph0 ) ) $. $}
${ $d x ph0 $.
   nonempty-predicate-is-top.0 $e |- ( \ceil ph0 ) $.
   nonempty-predicate-is-top.1 $e |- ( \is-predicate ph1 ) $.
   nonempty-predicate-is-top $a |- ( \imp ( \eq ph0 ( \and ph1 ph0 ) ) ph1 ) $. $}
${ $d x ph1 $.
   $d x ph2 $.
   predicate-and-propagate-in-eq.0 $e |- ( \is-predicate ph0 ) $.
   predicate-and-propagate-in-eq $a |- ( \imp ( \and ph0 ( \eq ph1 ph2 ) ) ( \eq ( \and ph0 ph1 ) ph2 ) ) $. $}
${ $d x ph0 $.
   $d x ph1 $.
   predicate-imp-propagate-in-floor.0 $e |- ( \is-predicate ph0 ) $.
   predicate-imp-propagate-in-floor $a |- ( \imp ( \imp ph0 ( \floor ph1 ) ) ( \floor ( \imp ph0 ph1 ) ) ) $. $}
${ $d x ph0 $.
   $d x ph1 $.
   $d x ph2 $.
   predicate-imp-propagate-in-iff.0 $e |- ( \is-predicate ph0 ) $.
   predicate-imp-propagate-in-iff $a |- ( \imp ( \imp ph0 ( \iff ph1 ph2 ) ) ( \iff ( \and ( \imp ph0 ph1 ) ph2 ) ph2 ) ) $. $}
${ predicate-floor-intro.0 $e |- ( \is-predicate ph0 ) $.
   predicate-floor-intro.1 $e |- ( \imp ph0 ph1 ) $.
   predicate-floor-intro $a |- ( \imp ph0 ( \floor ph1 ) ) $. $}
${ rule-predicate-intro-and.0 $e |- ( \is-predicate ph0 ) $.
   rule-predicate-intro-and.1 $e |- ( \is-predicate ph1 ) $.
   rule-predicate-intro-and $a |- ( \is-predicate ( \and ph0 ph1 ) ) $. $}
predicate-intro-top $a |- ( \is-predicate \top ) $.
is-bot-elim $a |- ( \imp ( \is-bot ph0 ) ( \imp ph0 ph1 ) ) $.
${ $d x ph1 $.
   $d x ph2 $.
   predicate-imp-propagate-in-app.0 $e |- ( \is-predicate ph0 ) $.
   predicate-imp-propagate-in-app $a |- ( \iff ( \and ph0 ( \app ph1 ph2 ) ) ( \app ph1 ( \and ph0 ph2 ) ) ) $. $}
${ predicate-imp-compat-in-ceil.0 $e |- ( \is-predicate ph0 ) $.
   predicate-imp-compat-in-ceil.1 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
   predicate-imp-compat-in-ceil $a |- ( \imp ph0 ( \imp ( \ceil ph1 ) ( \ceil ph2 ) ) ) $. $}
${ predicate-not-ceil-elim.0 $e |- ( \is-predicate ph0 ) $.
   predicate-not-ceil-elim.1 $e |- ( \imp ph0 ( \not ph1 ) ) $.
   predicate-not-ceil-elim $a |- ( \imp ph0 ( \not ( \ceil ph1 ) ) ) $. $}
kore-top-sorting $a |- ( \in-sort ( \kore-top ph0 ) ph0 ) $.
kore-bottom-sorting $a |- ( \in-sort ( \kore-bottom ph0 ) ph0 ) $.
kore-not-sorting $a |- ( \in-sort ( \kore-not ph0 ph1 ) ph0 ) $.
kore-or-sorting-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \kore-or ph0 ph1 ph2 ) ph0 ) ) ) $.
kore-or-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-or ph0 ph1 ph2 ) ph0 ) ) $.
or-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \or ph1 ph2 ) ph0 ) ) $.
kore-and-sorting-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \kore-and ph0 ph1 ph2 ) ph0 ) ) ) $.
kore-and-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-and ph0 ph1 ph2 ) ph0 ) ) $.
kore-implies-sorting-alt $a |- ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \kore-implies ph0 ph1 ph2 ) ph0 ) ) $.
kore-implies-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-implies ph0 ph1 ph2 ) ph0 ) ) $.
kore-ceil-sorting $a |- ( \in-sort ( \kore-ceil ph0 ph2 ph1 ) ph2 ) $.
kore-floor-sorting $a |- ( \in-sort ( \kore-floor ph0 ph2 ph1 ) ph2 ) $.
kore-equals-sorting $a |- ( \in-sort ( \kore-equals ph0 ph1 ph2 ph3 ) ph1 ) $.
${ $d X ph0 $.
   kore-mu-sorting.0 $e #Positive X ph1 $.
   kore-mu-sorting.1 $e |- ( \imp ( \in-sort X ph0 ) ( \in-sort ph1 ph0 ) ) $.
   kore-mu-sorting.2 $e #Substitution ph2 ph1 ( \inh ph0 ) X $.
   kore-mu-sorting $a |- ( \in-sort ( \mu X ph1 ) ph0 ) $. $}
${ kore-valid-to-in-sort.0 $e |- ( \kore-valid ph0 ph1 ) $.
   kore-valid-to-in-sort $a |- ( \in-sort ph1 ph0 ) $. $}
kore-exists-sorting $a |- ( \in-sort ( \kore-exists ph0 ph1 x ph2 ) ph1 ) $.
kore-forall-sorting $a |- ( \in-sort ( \kore-forall ph0 ph1 x ph2 ) ph1 ) $.
sorted-forall-sorting-lemma-0 $a |- ( \imp ph0 ( \imp ( \imp ph1 ph2 ) ( \imp ( \imp ph0 ph1 ) ph2 ) ) ) $.
sorted-forall-sorting-lemma-1 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ( \imp ph1 ph2 ) ) ( \floor ( \imp ( \imp ( \floor ph0 ) ph1 ) ph2 ) ) ) ) $.
sorted-forall-sorting-lemma-2 $a |- ( \imp ( \floor ph0 ) ( \imp ( \imp ( \and ph3 ( \floor ph0 ) ) ( \floor ( \imp ph1 ph2 ) ) ) ( \imp ph3 ( \floor ( \imp ( \imp ( \floor ph0 ) ph1 ) ph2 ) ) ) ) ) $.
sorted-forall-sorting-lemma-3 $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph2 ph0 ) ( \imp ph2 ph1 ) ) ) $.
${ $d x ph0 $.
   $d x ph3 $.
   sorted-forall-sorting.0 $e |- ( \exists x ( \in-sort x ph1 ) ) $.
   sorted-forall-sorting.1 $e |- ( \imp ( \and ph3 ( \in-sort x ph1 ) ) ( \in-sort ph2 ph0 ) ) $.
   sorted-forall-sorting $a |- ( \imp ph3 ( \in-sort ( \sorted-forall x ph1 ph2 ) ph0 ) ) $. $}
${ $d x ph0 $.
   $d x ph3 $.
   sorted-exists-sorting.0 $e |- ( \imp ( \and ph3 ( \in-sort x ph1 ) ) ( \in-sort ph2 ph0 ) ) $.
   sorted-exists-sorting $a |- ( \imp ph3 ( \in-sort ( \sorted-exists x ph1 ph2 ) ph0 ) ) $. $}
kore-rewrites-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-rewrites ph0 ph1 ph2 ) ph0 ) ) $.
kore-in-sorting $a |- ( \in-sort ( \kore-in ph0 ph1 ph2 ph3 ) ph1 ) $.
${ kore-mu-sorting-alt.0 $e #Positive X ph1 $.
   kore-mu-sorting-alt $a |- ( \in-sort ( \kore-mu ph0 X ph1 ) ph0 ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-eventually-sorting $a |- ( \in-sort ( \kore-eventually ph0 ph1 ) ph0 ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-weak-eventually-sorting $a |- ( \in-sort ( \kore-weak-eventually ph0 ph1 ) ph0 ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-always-sorting $a |- ( \in-sort ( \kore-always ph0 ph1 ) ph0 ) $. $}
kore-all-path-next-sorting $a |- ( \in-sort ( \kore-all-path-next ph0 ph1 ) ph0 ) $.
kore-circularity-sorting $a |- ( \in-sort ( \kore-circularity ph0 ph1 ) ph0 ) $.
${ $d X Y ph0 $.
   kore-well-founded-sorting $a |- ( \in-sort ( \kore-well-founded ph0 ) ph0 ) $. $}
${ $d X Y ph0 $.
   kore-well-founded-alt-sorting $a |- ( \in-sort ( \kore-well-founded-alt ph0 ) ph0 ) $. $}
kore-one-path-reaches-star-sorting $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ph0 ) ) $.
kore-one-path-reaches-plus-sorting $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ph0 ) ) $.
kore-top-valid $a |- ( \kore-valid ph0 ( \kore-top ph0 ) ) $.
kore-not-bot $a |- ( \kore-valid ph0 ( \kore-not ph0 ( \kore-bottom ph0 ) ) ) $.
kore-bot-elim $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-bottom ph0 ) ph1 ) ) ) $.
kore-mp-aux $a |- ( \imp ( \iff ph1 ph0 ) ( \imp ( \iff ( \or ( \and ( \not ph1 ) ph0 ) ph2 ) ph0 ) ( \iff ph2 ph0 ) ) ) $.
kore-mp $a |- ( \imp ( \kore-valid ph0 ph1 ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \kore-valid ph0 ph2 ) ) ) $.
${ kore-mp-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-mp-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $.
   kore-mp-alt $a |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $. $}
${ kore-weakened-mp.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
   kore-weakened-mp.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-weakened-mp $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $. $}
kore-weakening-alt $a |- ( \imp ( \kore-valid ph0 ph1 ) ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) ) $.
${ kore-weakening.0 $e |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $.
   kore-weakening $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $. $}
kore-implies-transitivity $a |- ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) ) $.
${ rule-kore-implies-transitivity.0 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
   rule-kore-implies-transitivity.1 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) $.
   rule-kore-implies-transitivity $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) $. $}
kore-or-intro-left $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph1 ph2 ) ) ) ) ) $.
kore-or-intro-right $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ph1 ) ) ) ) ) $.
${ kore-or-intro-left-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-intro-left-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-intro-left-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-or-intro-right-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-intro-right-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-intro-right-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ph1 ) ) ) ) $. $}
kore-or-elim-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \imp ( \in-sort ph3 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) ) ) ) ) $.
${ kore-or-elim-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-elim-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-elim-alt3.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-or-elim-alt3 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ph3 ) ( \kore-implies ph0 ( \kore-implies ph0 ph2 ph3 ) ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) ) ) $. $}
${ kore-or-elim.0 $e |- ( \in-sort ph1 ph0 ) $.
   kore-or-elim.1 $e |- ( \in-sort ph2 ph0 ) $.
   kore-or-elim.2 $e |- ( \in-sort ph3 ph0 ) $.
   kore-or-elim.3 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) $.
   kore-or-elim.4 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) $.
   kore-or-elim $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) $. $}
${ kore-or-elim-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-elim-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-elim-alt2.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-or-elim-alt2.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $.
   kore-or-elim-alt2.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-or-elim-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) $. $}
kore-and-elim-left-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ( \kore-valid ph0 ph1 ) ) ) $.
kore-and-elim-right-alt $a |- ( \imp ( \in-sort ph2 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ( \kore-valid ph0 ph2 ) ) ) $.
kore-and-elim-left $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph1 ) ) ) ) $.
kore-and-elim-right $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph2 ph1 ) ph1 ) ) ) ) $.
${ kore-and-elim-left-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-elim-left-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-elim-left-alt3 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph1 ) ) ) $. $}
${ kore-and-elim-right-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-elim-right-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-elim-right-alt3 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph2 ) ) ) $. $}
${ kore-and-elim-left-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-elim-left-alt2.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ) $.
   kore-and-elim-left-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $. $}
${ kore-and-elim-right-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-elim-right-alt2.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ) $.
   kore-and-elim-right-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $. $}
kore-and-intro $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) ) $.
${ kore-and-intro-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-intro-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-intro-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $.
   kore-and-intro-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ph2 ) ) $.
   kore-and-intro-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ph2 ) ) ) $. $}
${ kore-and-intro-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-intro-alt2.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-and-intro-alt2.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-and-intro-alt2.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $.
   kore-and-intro-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ph3 ) ) ) ) $. $}
kore-implies-elim $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \imp ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \imp ph1 ph2 ) ) ) ) $.
${ kore-implies-elim-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-elim-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-elim-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-elim-alt $a |- ( \imp th0 ( \imp ph1 ph2 ) ) $. $}
${ kore-implies-intro.0 $e |- ( \in-sort ph1 ph0 ) $.
   kore-implies-intro.1 $e |- ( \in-sort ph2 ph0 ) $.
   kore-implies-intro.2 $e |- ( \imp ph1 ph2 ) $.
   kore-implies-intro $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $. $}
${ kore-implies-intro-alt.0 $e |- ( \is-predicate th0 ) $.
   kore-implies-intro-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-intro-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-intro-alt.3 $e |- ( \imp th0 ( \imp ph1 ph2 ) ) $.
   kore-implies-intro-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $. $}
${ kore-implies-reflexivity.0 $e |- ( \in-sort ph1 ph0 ) $.
   kore-implies-reflexivity $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph1 ) ) $. $}
${ rule-kore-mp.0 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
   rule-kore-mp.1 $e |- ( \kore-valid ph0 ph1 ) $.
   rule-kore-mp $a |- ( \kore-valid ph0 ph2 ) $. $}
kore-contrapositive $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ( \kore-not ph0 ph2 ) ( \kore-not ph0 ph1 ) ) ) ) ) ) $.
${ rule-kore-contrapositive.0 $e |- ( \in-sort ph1 ph0 ) $.
   rule-kore-contrapositive.1 $e |- ( \in-sort ph2 ph0 ) $.
   rule-kore-contrapositive.2 $e |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) $.
   rule-kore-contrapositive $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ph2 ) ( \kore-not ph0 ph1 ) ) ) $. $}
${ kore-contrapositive-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-contrapositive-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-contrapositive-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-contrapositive-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ph2 ) ( \kore-not ph0 ph1 ) ) ) ) $. $}
kore-dn-intro $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ) ) ) $.
kore-dn-elim $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph1 ) ) ) $.
${ kore-de-morgan-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph1 ) ) ) $.
   kore-de-morgan-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph2 ) ) ) $.
   kore-de-morgan-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-or ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-implies-reflexivity-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-reflexivity-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph1 ) ) ) $. $}
${ kore-iff-reflexivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-reflexivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph1 ) ) ) $. $}
${ kore-implies-transitivity-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-transitivity-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-implies-transitivity-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) $. $}
${ kore-implies-transitivity-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-transitivity-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-transitivity-alt2.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-implies-transitivity-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ( \kore-implies ph0 ph2 ph3 ) ( \kore-implies ph0 ph1 ph3 ) ) ) ) ) $. $}
${ kore-iff-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-iff-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-iff-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
   kore-iff-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph2 ph3 ) ) ) $.
   kore-iff-transitivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph3 ) ) ) $. $}
${ kore-iff-symmetry.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-symmetry.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-iff-symmetry.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
   kore-iff-symmetry $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph2 ph1 ) ) ) $. $}
${ kore-and-commutativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-commutativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-commutativity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph2 ph1 ) ) ) ) $. $}
${ kore-and-associativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-associativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-associativity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-and-associativity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ph1 ( \kore-and ph0 ph2 ph3 ) ) ( \kore-and ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) ) $. $}
${ kore-or-commutativity-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-commutativity-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-commutativity-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph0 ph2 ph1 ) ) ) ) $. $}
${ kore-or-commutativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-commutativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-commutativity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph0 ph2 ph1 ) ) ) ) $. $}
${ kore-or-associativity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-associativity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-associativity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-or-associativity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-or ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ( \kore-or ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-and.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-and.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-and.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-implies-compat-in-kore-and.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-implies-compat-in-kore-and.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-and.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph4 ) ) ) $.
   kore-implies-compat-in-kore-and $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph3 ) ( \kore-and ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-iff-compat-in-kore-and.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-compat-in-kore-and.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-iff-compat-in-kore-and.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-iff-compat-in-kore-and.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-iff-compat-in-kore-and.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
   kore-iff-compat-in-kore-and.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph3 ph4 ) ) ) $.
   kore-iff-compat-in-kore-and $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ph1 ph3 ) ( \kore-and ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-or.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-or.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-or.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-implies-compat-in-kore-or.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-implies-compat-in-kore-or.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-or.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph4 ) ) ) $.
   kore-implies-compat-in-kore-or $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-or ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-iff-compat-in-kore-or.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-compat-in-kore-or.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-iff-compat-in-kore-or.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-iff-compat-in-kore-or.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-iff-compat-in-kore-or.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
   kore-iff-compat-in-kore-or.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph3 ph4 ) ) ) $.
   kore-iff-compat-in-kore-or $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-or ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-iff-elim-left.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-elim-left.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-iff-elim-left.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
   kore-iff-elim-left $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $. $}
${ kore-iff-elim-right.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-iff-elim-right.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-iff-elim-right.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ph1 ph2 ) ) ) $.
   kore-iff-elim-right $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) ) $. $}
${ kore-and-top-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-top-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-top-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-and ph0 ph1 ( \kore-top ph0 ) ) ph2 ) ( \kore-and ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-anp-top.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-top.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-and ph0 ph1 ( \kore-top ph0 ) ) ) ) $.
   kore-anp-top $a |- ( \imp th0 ( \kore-valid ph0 ph1 ) ) $. $}
${ kore-imp-conj-simplify.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-imp-conj-simplify.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-imp-conj-simplify.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-imp-conj-simplify.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-imp-conj-simplify.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-and ph0 ph1 ph4 ) ) ) ) $.
   kore-imp-conj-simplify $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-and ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-not-elim.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-not-elim.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-not-elim.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-not-elim.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph1 ) ) ) $.
   kore-not-elim $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $. $}
${ kore-or-intro-left-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph1 ) ) ) $.
   kore-or-intro-left-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-or-intro-right-alt.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph2 ) ) ) $.
   kore-or-intro-right-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-curry.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
   kore-curry $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $. $}
${ kore-uncurry.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
   kore-uncurry $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $. $}
${ kore-premise-switch.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-premise-switch.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-premise-switch.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
   kore-premise-switch $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ( \kore-implies ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-and-intro-alt3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-intro-alt3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-intro-alt3.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-and-intro-alt3 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-and ph0 ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph0 ph1 ph3 ) ) ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ph3 ) ) ) ) ) $. $}
${ kore-weakening-imp2.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-weakening-imp2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph3 ph1 ) ( \kore-implies ph0 ph3 ph2 ) ) ) ) $. $}
${ kore-weakening-imp3.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weakening-imp3.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-weakening-imp3.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-weakening-imp3.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-implies ph0 ph2 ph3 ) ) ) ) $.
   kore-weakening-imp3 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph4 ph1 ) ( \kore-implies ph0 ( \kore-implies ph0 ph4 ph2 ) ( \kore-implies ph0 ph4 ph3 ) ) ) ) ) $. $}
${ kore-and-or-distributivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-or-distributivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-or-distributivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-and-or-distributivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-or ph0 ph2 ph3 ) ) ( \kore-or ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) ) $. $}
${ kore-and-or-distributivity-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-and-or-distributivity-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-and-or-distributivity-alt.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-and-or-distributivity-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ( \kore-or ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) ) $. $}
kore-ceil-is-predicate $a |- ( \kore-is-predicate ph1 ( \kore-ceil ph0 ph1 ph2 ) ) $.
kore-is-predicate-not $a |- ( \imp ( \kore-is-predicate ph0 ph1 ) ( \kore-is-predicate ph0 ( \kore-not ph0 ph1 ) ) ) $.
${ kore-is-predicate-not-alt.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-is-predicate-not-alt $a |- ( \kore-is-predicate ph0 ( \kore-not ph0 ph1 ) ) $. $}
kore-floor-is-predicate $a |- ( \kore-is-predicate ph1 ( \kore-floor ph0 ph1 ph2 ) ) $.
kore-equals-is-predicate $a |- ( \kore-is-predicate ph1 ( \kore-equals ph0 ph1 ph2 ph3 ) ) $.
kore-is-predicate-and $a |- ( \imp ( \kore-is-predicate ph0 ph1 ) ( \imp ( \kore-is-predicate ph0 ph2 ) ( \kore-is-predicate ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) $.
${ kore-is-predicate-and-alt.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-is-predicate-and-alt.1 $e |- ( \kore-is-predicate ph0 ph2 ) $.
   kore-is-predicate-and-alt $a |- ( \kore-is-predicate ph0 ( \kore-and ph0 ph1 ph2 ) ) $. $}
${ $d x ph0 $.
   kore-is-sort-is-predicate $a |- ( \is-predicate ( \kore-is-sort ph0 ) ) $. $}
kore-is-predicate-top $a |- ( \kore-is-predicate ph0 ( \kore-top ph0 ) ) $.
${ kore-is-predicate-elim.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-is-predicate-elim.1 $e #Substitution ph3 ph2 ( \kore-bottom ph0 ) x $.
   kore-is-predicate-elim.2 $e #Substitution ph4 ph2 ( \kore-top ph0 ) x $.
   kore-is-predicate-elim.3 $e #Substitution ph5 ph2 ph1 x $.
   kore-is-predicate-elim.4 $e |- ph3 $.
   kore-is-predicate-elim.5 $e |- ph4 $.
   kore-is-predicate-elim $a |- ph5 $. $}
${ disjointness-eq.0 $e |- ( \eq ph0 ph2 ) $.
   disjointness-eq.1 $e |- ( \eq ph1 ph3 ) $.
   disjointness-eq.2 $e |- ( \not ( \and ph2 ph3 ) ) $.
   disjointness-eq $a |- ( \not ( \and ph0 ph1 ) ) $. $}
${ disjointness-simplify.0 $e |- ( \not ( \and ph0 ph1 ) ) $.
   disjointness-simplify.1 $e |- ( \imp ph2 ph1 ) $.
   disjointness-simplify $a |- ( \not ( \and ph0 ph2 ) ) $. $}
${ disjointness-symmetry.0 $e |- ( \not ( \and ph0 ph1 ) ) $.
   disjointness-symmetry $a |- ( \not ( \and ph1 ph0 ) ) $. $}
${ $d x ph0 $.
   disjointness-quantify.0 $e |- ( \not ( \and ph0 ph1 ) ) $.
   disjointness-quantify $a |- ( \not ( \and ph0 ( \sorted-exists x ph2 ph1 ) ) ) $. $}
${ predicate-commutes-with-context.0 $e |- ( \is-predicate ph0 ) $.
   predicate-commutes-with-context.1 $e #ApplicationContext x ph1 $.
   predicate-commutes-with-context.2 $e #Substitution ph2 ph1 ph5 x $.
   predicate-commutes-with-context.3 $e #Substitution ph3 ph1 ( \and ph0 ph5 ) x $.
   predicate-commutes-with-context.4 $e #Substitution ph4 ph1 ( \and \top ph5 ) x $.
   predicate-commutes-with-context $a |- ( \imp ( \and ph0 ph2 ) ph3 ) $. $}
${ $d y ph0 $.
   sorted-exists-propagation-converse.0 $e #ApplicationContext x ph0 $.
   sorted-exists-propagation-converse.1 $e #Substitution ph1 ph0 ph5 x $.
   sorted-exists-propagation-converse.2 $e #Substitution ph2 ph0 ( \sorted-exists y ph6 ph5 ) x $.
   sorted-exists-propagation-converse.3 $e #Substitution ph3 ph0 ( \and ( \in-sort y ph6 ) ph5 ) x $.
   sorted-exists-propagation-converse.4 $e #Substitution ph4 ph0 ( \and \top ph5 ) x $.
   sorted-exists-propagation-converse $a |- ( \imp ( \sorted-exists y ph6 ph1 ) ph2 ) $. $}
${ disjointness-case.0 $e |- ( \not ( \and ph0 ph1 ) ) $.
   disjointness-case.1 $e |- ( \not ( \and ph0 ph2 ) ) $.
   disjointness-case $a |- ( \not ( \and ph0 ( \or ph1 ph2 ) ) ) $. $}
${ $d x ph0 $.
   sorted-exists-to-inh $a |- ( \imp ( \sorted-exists x ph0 x ) ( \inh ph0 ) ) $. $}
${ $d x ph1 $.
   disjointness-sort.0 $e |- ( \not ( \and ph0 ( \inh ph1 ) ) ) $.
   disjointness-sort $a |- ( \not ( \and ph0 ( \sorted-exists x ph1 x ) ) ) $. $}
${ $d x y $.
   $d x ph0 $.
   disjointness-alt-lemma $a |- ( \imp ( \sorted-exists x ph2 ( \ceil ( \and ph0 ph1 ) ) ) ( \ceil ( \and ph0 ( \sorted-exists x ph2 ph1 ) ) ) ) $. $}
${ $d x ph0 $.
   disjointness-alt.0 $e |- ( \not ( \and ph0 ( \sorted-exists x ph2 ph1 ) ) ) $.
   disjointness-alt $a |- ( \not ( \sorted-exists x ph2 ( \ceil ( \and ph0 ph1 ) ) ) ) $. $}
${ disjointness-in-sort.0 $e |- ( \in-sort ph0 ph2 ) $.
   disjointness-in-sort.1 $e |- ( \not ( \and ( \inh ph2 ) ph1 ) ) $.
   disjointness-in-sort $a |- ( \not ( \and ph0 ph1 ) ) $. $}
kore-semantics-not $a |- ( \eq ( \kore-not ph0 ph1 ) ( \and ( \not ph1 ) ( \inh ph0 ) ) ) $.
${ kore-semantics-forall.0 $e #Fresh x ph1 $.
   kore-semantics-forall $a |- ( \eq ( \kore-forall ph0 ph1 x ph2 ) ( \and ( \sorted-forall x ph0 ph2 ) ( \inh ph1 ) ) ) $. $}
kore-semantics-and $a |- ( \eq ( \kore-and ph0 ph1 ph2 ) ( \and ph1 ph2 ) ) $.
kore-semantics-or $a |- ( \eq ( \kore-or ph0 ph1 ph2 ) ( \or ph1 ph2 ) ) $.
kore-semantics-implies $a |- ( \imp ( \in-sort ph2 ph0 ) ( \eq ( \kore-implies ph0 ph1 ph2 ) ( \and ( \imp ph1 ph2 ) ( \inh ph0 ) ) ) ) $.
kore-semantics-iff $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \eq ( \kore-iff ph0 ph1 ph2 ) ( \and ( \iff ph1 ph2 ) ( \inh ph0 ) ) ) ) $.
kore-semantics-ceil $a |- ( \eq ( \kore-ceil ph0 ph1 ph2 ) ( \and ( \ceil ph2 ) ( \inh ph1 ) ) ) $.
kore-semantics-floor $a |- ( \eq ( \kore-floor ph0 ph1 ph2 ) ( \and ( \floor ( \imp ( \inh ph0 ) ph2 ) ) ( \inh ph1 ) ) ) $.
kore-semantics-equals-lemma-0 $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \included ( \not ( \inh ph0 ) ) ( \iff ph1 ph2 ) ) ) $.
kore-semantics-equals-lemma-1 $a |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) ) ( \included ( \iff ph2 ph3 ) ( \imp ( \inh ph0 ) ( \iff ph2 ph3 ) ) ) ) $.
kore-semantics-equals-lemma-2 $a |- ( \imp ( \included ( \not ( \inh ph0 ) ) ( \iff ph1 ph2 ) ) ( \included ( \imp ( \inh ph0 ) ( \iff ph1 ph2 ) ) ( \iff ph1 ph2 ) ) ) $.
kore-semantics-equals-lemma-3 $a |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) ) ( \eq ( \imp ( \inh ph0 ) ( \iff ph2 ph3 ) ) ( \iff ph2 ph3 ) ) ) $.
${ $d x ph0 $.
   $d x ph1 $.
   kore-semantics-equals-alt $a |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) ) ( \eq ( \kore-equals ph0 ph1 ph2 ph3 ) ( \and ( \floor ( \imp ( \inh ph0 ) ( \iff ph2 ph3 ) ) ) ( \inh ph1 ) ) ) ) $. $}
${ $d x ph0 $.
   $d x ph1 $.
   kore-semantics-equals $a |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) ) ( \eq ( \kore-equals ph0 ph1 ph2 ph3 ) ( \and ( \eq ph2 ph3 ) ( \inh ph1 ) ) ) ) $. $}
${ $d x ph1 $.
   kore-exists-intro $a |- ( \imp ( \exists x ( \eq ph0 ph1 ) ) ( \eq ( \and ( \exists x ph0 ) ph1 ) ph1 ) ) $. $}
kore-semantics-dn $a |- ( \imp ( \in-sort ph1 ph0 ) ( \eq ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph1 ) ) $.
${ kore-semantics-exists-dn.0 $e |- ( \is-predicate th0 ) $.
   kore-semantics-exists-dn.1 $e #Fresh x th0 $.
   kore-semantics-exists-dn.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-semantics-exists-dn $a |- ( \imp th0 ( \eq ( \kore-exists ph1 ph0 x ( \kore-not ph0 ( \kore-not ph0 ph2 ) ) ) ( \kore-exists ph1 ph0 x ph2 ) ) ) $. $}
${ kore-equals-symmetry.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-equals ph1 ph0 ph3 ph2 ) ) ) $.
   kore-equals-symmetry $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-equals ph1 ph0 ph2 ph3 ) ) ) $. $}
${ kore-in-reflexivity.0 $e |- ( \is-predicate th0 ) $.
   kore-in-reflexivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-in-reflexivity $a |- ( \imp th0 ( \kore-valid ph1 ( \kore-in ph0 ph1 ph2 ph2 ) ) ) $. $}
${ sorted-forall-propagate-floor $a |- ( \imp ( \sorted-forall x ph0 ( \floor ph1 ) ) ( \floor ( \sorted-forall x ph0 ph1 ) ) ) $. $}
${ $d x ph2 $.
   kore-forall-intro-lemma $a |- ( \imp ( \sorted-forall x ph0 ( \eq ph1 ph2 ) ) ( \eq ( \and ( \sorted-forall x ph0 ph1 ) ph2 ) ph2 ) ) $. $}
${ $d x th0 $.
   $d x ph0 $.
   kore-forall-intro.0 $e |- ( \sorted-forall x ph2 ( \imp th0 ( \kore-valid ph0 ph1 ) ) ) $.
   kore-forall-intro $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-forall ph2 ph0 x ph1 ) ) ) $. $}
${ $d x th0 $.
   $d x ph0 $.
   kore-forall-intro-alt.0 $e |- ( \imp ( \and ( \in-sort x ph2 ) th0 ) ( \kore-valid ph0 ph1 ) ) $.
   kore-forall-intro-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-forall ph2 ph0 x ph1 ) ) ) $. $}
${ kore-equality-in-constraint.0 $e |- ( \is-predicate th0 ) $.
   kore-equality-in-constraint.1 $e #Substitution ph2 ph4 ph5 x $.
   kore-equality-in-constraint.2 $e #Substitution ph3 ph4 ph6 x $.
   kore-equality-in-constraint.3 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-equality-in-constraint.4 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-equality-in-constraint.5 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-equality-in-constraint.6 $e |- ( \imp th0 ( \in-sort ph5 ph7 ) ) $.
   kore-equality-in-constraint.7 $e |- ( \imp th0 ( \in-sort ph6 ph7 ) ) $.
   kore-equality-in-constraint.8 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-equals ph7 ph0 ph5 ph6 ) ) ) ) $.
   kore-equality-in-constraint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) $. $}
unit-sort-is-kore-sort $a |- ( \kore-is-sort \unit-sort ) $.
unit-sort-is-functional $a |- ( \exists x ( \eq x \unit-sort ) ) $.
${ $d x ph0 $.
   kore-sort-functional.0 $e |- ( \imp th0 ( \kore-is-sort ph0 ) ) $.
   kore-sort-functional $a |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $. $}
${ $d z ph0 $.
   $d z ph1 $.
   $d z ph2 $.
   $d z y $.
   $d z x $.
   $d z th1 $.
   $d z th2 $.
   $d x ph0 $.
   functional-substitution-alt2.0 $e #Fresh y th0 $.
   functional-substitution-alt2.1 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
   functional-substitution-alt2.2 $e |- ( \imp ( \and th0 th1 ) ph1 ) $.
   functional-substitution-alt2.3 $e #Substitution ( \imp th2 ph2 ) ( \imp th1 ph1 ) ph0 y $.
   functional-substitution-alt2.4 $e #Substitution ( \imp th3 ph3 ) ( \imp th1 ph1 ) z y $.
   functional-substitution-alt2 $a |- ( \imp ( \and th0 th2 ) ph2 ) $. $}
${ $d z ph0 $.
   $d z ph1 $.
   $d z ph2 $.
   $d z y $.
   $d z x $.
   $d z th1 $.
   $d z th2 $.
   $d x ph0 $.
   $d y th0 $.
   functional-substitution-alt.0 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
   functional-substitution-alt.1 $e |- ( \imp ( \and th0 th1 ) ph1 ) $.
   functional-substitution-alt.2 $e #Substitution ( \imp th2 ph2 ) ( \imp th1 ph1 ) ph0 y $.
   functional-substitution-alt.3 $e #Substitution ( \imp th3 ph3 ) ( \imp th1 ph1 ) z y $.
   functional-substitution-alt $a |- ( \imp ( \and th0 th2 ) ph2 ) $. $}
${ $d z ph0 $.
   $d z ph1 $.
   $d z ph2 $.
   $d z y $.
   $d z x $.
   $d z th1 $.
   $d z th2 $.
   $d x ph0 $.
   $d y th0 $.
   functional-substitution-alt3.0 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
   functional-substitution-alt3.2 $e #Substitution ( \imp th2 ph2 ) ( \imp th1 ph1 ) ph0 y $.
   functional-substitution-alt3.3 $e #Substitution ( \imp th3 ph3 ) ( \imp th1 ph1 ) z y $.
   functional-substitution-alt3 $a |- ( \imp th0 ( \imp ( \forall y ( \imp th1 ph1 ) ) ( \imp th2 ph2 ) ) ) $. $}
${ $d z ph0 $.
   $d z ph1 $.
   $d z ph2 $.
   $d z y $.
   $d z x $.
   $d z th1 $.
   $d z th2 $.
   $d z ph4 $.
   $d x ph0 $.
   $d y ph4 $.
   $d y ph5 $.
   $d y th0 $.
   functional-substitution-alt4.0 $e |- ( \is-predicate th0 ) $.
   functional-substitution-alt4.1 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
   functional-substitution-alt4.2 $e |- ( \imp th0 ( \in-sort ph2 ph5 ) ) $.
   functional-substitution-alt4.3 $e |- ( \imp th0 ( \in-sort ph0 ph4 ) ) $.
   functional-substitution-alt4.4 $e #Substitution ph2 ph1 ph0 y $.
   functional-substitution-alt4.5 $e #Substitution ph3 ph1 z y $.
   functional-substitution-alt4 $a |- ( \imp th0 ( \kore-valid ph5 ( \kore-implies ph5 ( \kore-forall ph4 ph5 y ph1 ) ph2 ) ) ) $. $}
eq-compat-in-eq-alt $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ( \eq ph0 ph2 ) ( \eq ph1 ph2 ) ) ) $.
${ nonempty-floor-is-top.0 $e |- ( \ceil ph0 ) $.
   nonempty-floor-is-top $a |- ( \iff ( \eq ph0 ( \and ( \floor ph1 ) ph0 ) ) ( \floor ph1 ) ) $. $}
${ $d x y $.
   unit-sort-nonempty-alt $a |- ( \ceil ( \inh \unit-sort ) ) $. $}
${ kore-equals-to-eq.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-equals-to-eq.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-equals-to-eq.2 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-equals ph0 \unit-sort ph1 ph2 ) ) ) $.
   kore-equals-to-eq $a |- ( \imp th0 ( \eq ph1 ph2 ) ) $. $}
${ kore-equals-elim.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-equals-elim.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-equals-elim.2 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-equals ph0 \unit-sort ph1 ph2 ) ) ) $.
   kore-equals-elim.3 $e |- ( \imp th0 ph3 ) $.
   kore-equals-elim.4 $e #Substitution ph3 ph4 ph1 x $.
   kore-equals-elim.5 $e #Substitution ph5 ph4 ph2 x $.
   kore-equals-elim $a |- ( \imp th0 ph5 ) $. $}
${ kore-equals-elim-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-equals-elim-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-equals-elim-alt.2 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-equals ph0 \unit-sort ph1 ph2 ) ) ) $.
   kore-equals-elim-alt.3 $e |- ( \imp th0 ( \kore-valid ph6 ph3 ) ) $.
   kore-equals-elim-alt.4 $e #Substitution ( \kore-valid ph6 ph3 ) ph4 ph1 x $.
   kore-equals-elim-alt.5 $e #Substitution ( \kore-valid ph7 ph5 ) ph4 ph2 x $.
   kore-equals-elim-alt $a |- ( \imp th0 ( \kore-valid ph7 ph5 ) ) $. $}
kore-equals-reflexivity-aux $a |- ( \not ( \and ( \not ( \and ( \or ( \and ( \not ph2 ) ph1 ) ph2 ) ( \or ( \and ( \not ph2 ) ph1 ) ph2 ) ) ) ph1 ) ) $.
kore-equals-reflexivity $a |- ( \kore-valid ph0 ( \kore-equals ph1 ph0 ph2 ph2 ) ) $.
${ $d x ph0 $.
   $d x ph1 $.
   $d x ph2 $.
   kore-dup-and $a |- ( \kore-valid ph0 ( \kore-equals ph1 ph0 ( \kore-and ph1 ph2 ph2 ) ph2 ) ) $. $}
${ $d x y s0 $.
   $d y ph0 $.
   $d y ph1 $.
   kore-variable-functional $a |- ( \imp ( \in-sort x ph0 ) ( \kore-valid ph1 ( \kore-exists ph0 ph1 y ( \kore-equals ph0 ph1 y x ) ) ) ) $. $}
${ $d y x $.
   $d y ph0 $.
   $d y ph1 $.
   $d x ph2 $.
   kore-functional-lemma $a |- ( \imp ( \floor ph2 ) ( \imp ( \eq ( \and ( \exists x ph1 ) ph0 ) ph0 ) ( \eq ( \and ( \exists x ( \and ( \floor ph2 ) ph1 ) ) ph0 ) ph0 ) ) ) $. $}
${ $d x ph0 $.
   $d x ph1 $.
   kore-functional.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-functional.1 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-exists ph0 \unit-sort x ( \kore-equals ph0 \unit-sort x ph1 ) ) ) ) $.
   kore-functional $a |- ( \imp th0 ( \exists x ( \eq x ph1 ) ) ) $. $}
kore-ph-implies-ceil-ph $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-ceil ph0 ph0 ph1 ) ) ) $.
${ kore-floor-ph-implies-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-floor-ph-implies-ph $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-floor ph0 ph0 ph1 ) ph1 ) ) ) $. $}
${ kore-exists-quantifier.0 $e #Substitution ph1 ph3 y x $.
   kore-exists-quantifier.1 $e #Fresh x ph2 $.
   kore-exists-quantifier $a |- ( \imp ( \in-sort y ph2 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-exists ph2 ph0 x ph3 ) ) ) ) $. $}
${ kore-forall-prenex-implies-left.0 $e #Fresh x ph0 $.
   kore-forall-prenex-implies-left.1 $e #Fresh x ph1 $.
   kore-forall-prenex-implies-left $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ( \kore-forall ph3 ph0 x ph2 ) ) ( \kore-forall ph3 ph0 x ( \kore-implies ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-forall-prenex-implies-right.0 $e #Fresh x ph0 $.
   kore-forall-prenex-implies-right.1 $e #Fresh x ph1 $.
   kore-forall-prenex-implies-right $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-forall ph3 ph0 x ( \kore-implies ph0 ph1 ph2 ) ) ( \kore-implies ph0 ph1 ( \kore-forall ph3 ph0 x ph2 ) ) ) ) $. $}
${ $d x ph0 $.
   $d x th0 $.
   $d y x $.
   $d y ph0 $.
   $d y ph1 $.
   $d y ph2 $.
   kore-forall-not-to-exists.0 $e |- ( \is-predicate th0 ) $.
   kore-forall-not-to-exists.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-forall-not-to-exists.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-forall ph1 ph0 x ( \kore-not ph0 ph2 ) ) ) ) $.
   kore-forall-not-to-exists $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-exists ph1 ph0 x ph2 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-next.0 $e |- ( \is-predicate th0 ) $.
   kore-implies-compat-in-kore-next.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-next.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-next.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-next $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-next-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-next-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-next-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-next-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) $. $}
${ kore-or-propagates-in-kore-next.0 $e |- ( \is-predicate th0 ) $.
   kore-or-propagates-in-kore-next.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-propagates-in-kore-next.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-propagates-in-kore-next $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-next ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) ) $. $}
${ kore-or-propagates-in-kore-next-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-propagates-in-kore-next-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-propagates-in-kore-next-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-next ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) ) $. $}
${ kore-prefixpoint.0 $e #Positive X ph2 $.
   kore-prefixpoint.1 $e #Substitution ph1 ph2 ( \mu X ph2 ) X $.
   kore-prefixpoint.2 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-prefixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-mu ph0 X ph2 ) ) ) ) $. $}
${ kore-kt.0 $e #Positive X ph1 $.
   kore-kt.1 $e #Substitution ph3 ph1 ph2 X $.
   kore-kt.2 $e #Substitution ph4 ph1 ( \imp th0 ph2 ) X $.
   kore-kt.3 $e |- ( \is-predicate th0 ) $.
   kore-kt.4 $e |- ( \imp th0 ( \imp ph4 ph3 ) ) $.
   kore-kt.5 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-kt.6 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-kt.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph2 ) ) ) $.
   kore-kt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-mu ph0 X ph1 ) ph2 ) ) ) $. $}
${ kore-eventually-prefixpoint-lemma.0 $e #Notation ph2 ph3 $.
   kore-eventually-prefixpoint-lemma $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ph2 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph3 ) ) ph3 ) ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-eventually-sorting-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \mu X ( \kore-or ph0 ph1 ( \kore-next ph0 X ) ) ) ph0 ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-eventually-prefixpoint $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-eventually ph0 ph1 ) ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-eventually-prefixpoint-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-eventually-prefixpoint-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-eventually ph0 ph1 ) ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-eventually-kt-notation.0 $e #Notation ph1 ph2 $.
   kore-eventually-kt-notation $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   $d X ph2 $.
   kore-eventually-kt.0 $e |- ( \is-predicate th0 ) $.
   kore-eventually-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-eventually-kt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-eventually-kt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ph2 ) ) ) $.
   kore-eventually-kt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ph2 ) ) ) $. $}
${ kore-eventually-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-eventually-kt-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-eventually-kt-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ph2 ) ) ) $.
   kore-eventually-kt-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ph2 ) ) ) $. $}
${ kore-ph-to-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-ph-to-eventually-ph $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-next-eventually-ph-to-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-next-eventually-ph-to-eventually-ph $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ( \kore-eventually ph0 ph1 ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-eventually-idempotency.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-eventually-idempotency $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ( \kore-eventually ph0 ph1 ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-eventually.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ( \kore-eventually ph0 ph2 ) ) ) ) $. $}
${ kore-or-propagates-in-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-propagates-in-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-propagates-in-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-eventually ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-eventually ph0 ph1 ) ( \kore-eventually ph0 ph2 ) ) ) ) ) $. $}
${ kore-weak-eventually-postfixpoint-notation.0 $e #Notation ph2 ph3 $.
   kore-weak-eventually-postfixpoint-notation $a #Notation ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph2 ( \kore-not ph0 ( \kore-not ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ) ) ) ) ) ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-not ph0 ( \kore-not ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph3 ) ) ) ) ) ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-weak-eventually-postfixpoint $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ) ) ) ) $. $}
${ kore-weak-eventually-postfixpoint-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weak-eventually-postfixpoint-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ) ) ) ) $. $}
${ kore-weak-eventually-kt-notation.0 $e #Notation ph2 ph3 $.
   kore-weak-eventually-kt-notation $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph2 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph3 ) ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   $d X ph2 $.
   kore-weak-eventually-kt.0 $e |- ( \is-predicate th0 ) $.
   kore-weak-eventually-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weak-eventually-kt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-weak-eventually-kt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ( \kore-next ph0 ph1 ) ) ) ) ) $.
   kore-weak-eventually-kt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) ) ) $. $}
${ kore-weak-eventually-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weak-eventually-kt-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-weak-eventually-kt-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ( \kore-next ph0 ph1 ) ) ) ) ) $.
   kore-weak-eventually-kt-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) ) ) $. $}
${ kore-weak-eventually-prefixpoint.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weak-eventually-prefixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-eventually-to-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-eventually-to-weak-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-next-weak-eventually-ph-to-weak-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-next-weak-eventually-ph-to-weak-eventually-ph $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-ph-to-weak-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-ph-to-weak-eventually-ph $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-weak-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-weak-eventually.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-weak-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-weak-eventually ph0 ph2 ) ) ) ) $. $}
${ kore-weak-eventually-idempotency.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weak-eventually-idempotency $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ( \kore-weak-eventually ph0 ph1 ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-always-postfixpoint-notation.0 $e #Notation ph2 ph3 $.
   kore-always-postfixpoint-notation $a #Notation ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph2 ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ph2 ) ) ) ) ) ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ph3 ) ) ) ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   kore-always-postfixpoint $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ) ) ) ) $. $}
${ kore-always-postfixpoint-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-postfixpoint-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ) ) ) ) $. $}
${ $d X ph0 $.
   $d X ph1 $.
   $d X ph2 $.
   kore-always-kt.0 $e |- ( \is-predicate th0 ) $.
   kore-always-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-kt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-always-kt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ( \kore-all-path-next ph0 ph1 ) ) ) ) ) $.
   kore-always-kt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-always ph0 ph2 ) ) ) ) $. $}
${ kore-always-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-kt-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-always-kt-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ( \kore-all-path-next ph0 ph1 ) ) ) ) ) $.
   kore-always-kt-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-always ph0 ph2 ) ) ) ) $. $}
${ kore-implies-compat-in-kore-always.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-implies-compat-in-kore-always.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-implies-compat-in-kore-always.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-implies-compat-in-kore-always $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-always ph0 ph2 ) ) ) ) $. $}
${ kore-always-elim.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-elim $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ph1 ) ) ) $. $}
${ kore-always-idempotency.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-idempotency $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ( \kore-always ph0 ph1 ) ) ( \kore-always ph0 ph1 ) ) ) ) $. $}
${ kore-always-dup.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-dup $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-always ph0 ( \kore-always ph0 ph1 ) ) ) ) ) $. $}
${ kore-well-founded-prefixpoint-notation.0 $e #Notation ph1 ph2 $.
   kore-well-founded-prefixpoint-notation $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph1 ) ph1 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph2 ) ph2 ) ) ) $. $}
${ $d X ph0 $.
   kore-well-founded-prefixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-well-founded ph0 ) ) ( \kore-well-founded ph0 ) ) ) ) $. $}
${ kore-well-founded-kt-notation.0 $e #Notation ph2 ph3 $.
   kore-well-founded-kt-notation $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph1 ) ) ) $. $}
${ $d x X ph0 $.
   $d x X ph1 $.
   $d x th0 $.
   kore-well-founded-kt.0 $e |- ( \is-predicate th0 ) $.
   kore-well-founded-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-well-founded-kt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph1 ) ph1 ) ) ) $.
   kore-well-founded-kt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ph1 ) ) ) $. $}
${ kore-well-founded-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-well-founded-kt-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph1 ) ph1 ) ) ) $.
   kore-well-founded-kt-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ph1 ) ) ) $. $}
${ kore-well-founded-alt-prefixpoint-notation.0 $e #Notation ph1 ph2 $.
   kore-well-founded-alt-prefixpoint-notation $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ph1 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph2 ) ) ph2 ) ) ) $. $}
${ $d X ph0 $.
   kore-well-founded-alt-prefixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ( \kore-well-founded-alt ph0 ) ) ) ( \kore-well-founded-alt ph0 ) ) ) ) $. $}
${ kore-well-founded-alt-kt-notation.0 $e #Notation ph2 ph3 $.
   kore-well-founded-alt-kt-notation $a #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) ) ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph1 ) ) ) $. $}
${ $d x X ph0 $.
   $d x X ph1 $.
   $d x th0 $.
   kore-well-founded-alt-kt.0 $e |- ( \is-predicate th0 ) $.
   kore-well-founded-alt-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-well-founded-alt-kt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ph1 ) ) ) $.
   kore-well-founded-alt-kt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded-alt ph0 ) ph1 ) ) ) $. $}
${ kore-well-founded-alt-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-well-founded-alt-kt-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ph1 ) ) ) $.
   kore-well-founded-alt-kt-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded-alt ph0 ) ph1 ) ) ) $. $}
kore-well-founded-alt-postfixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded-alt ph0 ) ( \kore-all-path-next ph0 ( \kore-always ph0 ( \kore-well-founded-alt ph0 ) ) ) ) ) ) $.
${ kore-all-path-next-and-next-propagate-lemma.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-all-path-next-and-next-propagate-lemma.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-all-path-next-and-next-propagate-lemma.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-all-path-next-and-next-propagate-lemma $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-not ph0 ph2 ) ) ( \kore-implies ph0 ( \kore-and ph0 ( \kore-not ph0 ph1 ) ph2 ) ph3 ) ) ) ) $. $}
${ kore-all-path-next-and-next-propagate.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-all-path-next-and-next-propagate.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-all-path-next-and-next-propagate $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-all-path-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ( \kore-next ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $. $}
${ kore-all-path-next-imp-to-next.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-all-path-next-imp-to-next.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-all-path-next-imp-to-next $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \kore-implies ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) ) $. $}
${ kore-weak-eventually-to-wf-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-weak-eventually-to-wf-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-eventually ph0 ph1 ) ) ) ) ) $. $}
${ kore-wf-eventually-to-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-wf-eventually-to-weak-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-eventually ph0 ph1 ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $. $}
${ kore-or-propagates-in-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-or-propagates-in-weak-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-or-propagates-in-weak-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-weak-eventually ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-weak-eventually ph0 ph2 ) ) ) ) ) $. $}
${ kore-always-and-weak-eventually-to-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-always-and-weak-eventually-to-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-always-and-weak-eventually-to-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-always ph0 ph1 ) ( \kore-weak-eventually ph0 ph2 ) ) ( \kore-weak-eventually ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $. $}
${ kore-rewrites-star-reflexivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-star-reflexivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph1 ) ) ) $. $}
${ kore-rewrites-star-union.0 $e |- ( \is-predicate th0 ) $.
   kore-rewrites-star-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-star-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-star-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-rewrites-star-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-rewrites-star-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
   kore-rewrites-star-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
   kore-rewrites-star-union $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $. $}
${ kore-rewrites-plus-union.0 $e |- ( \is-predicate th0 ) $.
   kore-rewrites-plus-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-plus-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-plus-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-plus-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-rewrites-plus-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-rewrites-plus-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
   kore-rewrites-plus-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
   kore-rewrites-plus-union $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $. $}
${ kore-rewrites-star-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-star-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-star-subsumption-lhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph3 ) ) ) $. $}
${ kore-rewrites-star-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-star-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-star-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-star-subsumption-rhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph3 ) ) ) $. $}
${ kore-rewrites-plus-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-plus-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-plus-subsumption-lhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph3 ) ) ) $. $}
${ kore-rewrites-plus-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-plus-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-plus-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-plus-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-plus-subsumption-rhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph3 ) ) ) $. $}
${ kore-rewrites-star-prune.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-prune.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-star-prune.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-rewrites-star-prune.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph2 ) ) ) $.
   kore-rewrites-star-prune.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ( \kore-or ph0 ( \kore-and ph0 ph2 ph3 ) ph4 ) ) ) ) $.
   kore-rewrites-star-prune $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph4 ) ) ) $. $}
${ kore-rewrites-star-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-star-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-rewrites-star-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
   kore-rewrites-star-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph4 ) ) ) $.
   kore-rewrites-star-branch $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $. $}
${ kore-rewrites-plus-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-plus-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-plus-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-rewrites-plus-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
   kore-rewrites-plus-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph4 ) ) ) $.
   kore-rewrites-plus-branch $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $. $}
${ kore-rewrites-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-subsumption-lhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph3 ) ) ) $. $}
${ kore-rewrites-subsumption-rhs.0 $e |- ( \is-predicate th0 ) $.
   kore-rewrites-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-subsumption-rhs.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-subsumption-rhs.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-subsumption-rhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph3 ) ) ) $. $}
${ $d x th0 $.
   $d x ph0 $.
   $d x ph1 $.
   $d x ph2 $.
   kore-predicate-propagate-in-next.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-predicate-propagate-in-next.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-predicate-propagate-in-next.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-predicate-propagate-in-next $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ( \kore-next ph0 ph2 ) ) ( \kore-next ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $. $}
${ $d x th0 $.
   $d x ph0 $.
   $d x ph1 $.
   $d x ph2 $.
   kore-predicate-propagate-in-weak-eventually.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-predicate-propagate-in-weak-eventually.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-predicate-propagate-in-weak-eventually.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-predicate-propagate-in-weak-eventually $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) ( \kore-weak-eventually ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $. $}
${ kore-rewrites-constraint-lemma.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-rewrites-constraint-lemma.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-constraint-lemma.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-constraint-lemma.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-constraint-lemma.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
   kore-rewrites-constraint-lemma $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-plus-constraint-lemma.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-one-path-reaches-plus-constraint-lemma.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-plus-constraint-lemma.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-constraint-lemma.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-constraint-lemma.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
   kore-one-path-reaches-plus-constraint-lemma $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-star-constraint-lemma-alt.0 $e |- ( \kore-is-predicate ph0 ph2 ) $.
   kore-one-path-reaches-star-constraint-lemma-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-star-constraint-lemma-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-constraint-lemma-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-constraint-lemma-alt.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-star-constraint-lemma-alt.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-one-path-reaches-star-constraint-lemma-alt.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph3 ) ( \kore-and ph0 ph4 ph5 ) ) ) ) ) $.
   kore-one-path-reaches-star-constraint-lemma-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph3 ) ( \kore-and ph0 ( \kore-and ph0 ph2 ph4 ) ph5 ) ) ) ) ) $. $}
${ kore-one-path-reaches-plus-constraint-lemma-alt.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
   kore-one-path-reaches-plus-constraint-lemma-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-plus-constraint-lemma-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-constraint-lemma-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-constraint-lemma-alt.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) ) $.
   kore-one-path-reaches-plus-constraint-lemma-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) ) $. $}
${ kore-rewrites-star-intro.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-star-intro.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-intro.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-star-intro $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $. $}
${ kore-rewrites-star-intro-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-star-intro-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-intro-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-star-intro-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $. $}
${ kore-rewrites-plus-intro.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-plus-intro.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-plus-intro.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-plus-intro $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $. $}
${ kore-rewrites-star-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-star-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-star-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-star-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-star-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-star-transitivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph3 ) ) ) $. $}
${ kore-rewrites-plus-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-rewrites-plus-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-rewrites-plus-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-rewrites-plus-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
   kore-rewrites-plus-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph3 ) ) ) $.
   kore-rewrites-plus-transitivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-star-intro.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-intro.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-intro $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $. $}
${ kore-one-path-reaches-star-intro-alt.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-intro-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-intro-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $. $}
${ kore-one-path-reaches-star-intro-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-intro-alt2.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-intro-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $. $}
${ kore-one-path-reaches-star-intro-alt3.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-intro-alt3.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) ) $.
   kore-one-path-reaches-star-intro-alt3 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-one-path-reaches-plus-intro.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-intro.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-plus-intro $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $. $}
${ kore-one-path-reaches-star-transitivity.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-transitivity.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-transitivity.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-star-transitivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-plus-transitivity.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-transitivity.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-transitivity.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-plus-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-plus-transitivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-star-reflexivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-star-reflexivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph1 ) ) ) $. $}
${ kore-one-path-reaches-star-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-star-subsumption-lhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-star-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-star-subsumption-rhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-plus-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-plus-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) $. $}
${ kore-one-path-reaches-star-subsumption-lhs-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-lhs-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-lhs-alt.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-lhs-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-star-subsumption-lhs-alt.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) ) $.
   kore-one-path-reaches-star-subsumption-lhs-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-plus-subsumption-lhs-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs-alt.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs-alt.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs-alt.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs-alt.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) ) $.
   kore-one-path-reaches-plus-subsumption-lhs-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-plus-subsumption-rhs-alt.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs-alt.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-plus-subsumption-rhs-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-star-subsumption-rhs-alt.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-star-subsumption-rhs-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt2.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt2.2 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt2.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt2.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph5 ) ) ) $.
   kore-one-path-reaches-star-subsumption-rhs-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph2 ph5 ) ) ) ) ) $. $}
${ kore-one-path-reaches-star-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-star-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
   kore-one-path-reaches-star-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) $.
   kore-one-path-reaches-star-branch $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-plus-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-plus-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
   kore-one-path-reaches-plus-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) $.
   kore-one-path-reaches-plus-branch $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $. $}
${ kore-one-path-reaches-star-union.0 $e |- ( \is-predicate th0 ) $.
   kore-one-path-reaches-star-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-star-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-star-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-one-path-reaches-star-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
   kore-one-path-reaches-star-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
   kore-one-path-reaches-star-union $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $. $}
${ kore-one-path-reaches-star-union-alt.0 $e |- ( \is-predicate th0 ) $.
   kore-one-path-reaches-star-union-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) ) $.
   kore-one-path-reaches-star-union-alt.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) ) $.
   kore-one-path-reaches-star-union-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph0 ph3 ph4 ) ) ) ) ) $. $}
${ kore-one-path-reaches-star-union-alt2.0 $e |- ( \is-predicate th0 ) $.
   kore-one-path-reaches-star-union-alt2.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt2.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt2.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt2.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt2.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt2.6 $e |- ( \imp th0 ( \in-sort ph6 ph0 ) ) $.
   kore-one-path-reaches-star-union-alt2.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph1 ph6 ) ph3 ) ) ) $.
   kore-one-path-reaches-star-union-alt2.8 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph6 ) ph4 ) ) ) ) $.
   kore-one-path-reaches-star-union-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph6 ) ( \kore-or ph0 ph3 ph4 ) ) ) ) ) $. $}
${ kore-one-path-reaches-plus-union.0 $e |- ( \is-predicate th0 ) $.
   kore-one-path-reaches-plus-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-one-path-reaches-plus-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-one-path-reaches-plus-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-one-path-reaches-plus-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-one-path-reaches-plus-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-one-path-reaches-plus-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
   kore-one-path-reaches-plus-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
   kore-one-path-reaches-plus-union $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $. $}
kore-well-founded-to-well-founded-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-well-founded-alt ph0 ) ) ) ) $.
${ kore-reachability-one-path-circularity-lemma.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-reachability-one-path-circularity-lemma.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ph1 ) ) ) $.
   kore-reachability-one-path-circularity-lemma $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ph1 ) ) ) $. $}
${ kore-reachability-permits-non-wf.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-reachability-permits-non-wf.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-reachability-permits-non-wf $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) ) $. $}
${ kore-reachability-one-path-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-reachability-one-path-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-reachability-one-path-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-reachability-one-path-transitivity.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-reachability-one-path-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) ) $.
   kore-reachability-one-path-transitivity.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
   kore-reachability-one-path-transitivity $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-reachability-one-path-transitivity-alt.0 $e |- ( \is-predicate th0 ) $.
   kore-reachability-one-path-transitivity-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ( \kore-or ph0 ph3 ph5 ) ) ) ) ) $.
   kore-reachability-one-path-transitivity-alt.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
   kore-reachability-one-path-transitivity-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ( \kore-or ph0 ph4 ph5 ) ) ) ) ) $. $}
${ kore-reachability-one-path-transitivity-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt2.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt2.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
   kore-reachability-one-path-transitivity-alt2.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) $.
   kore-reachability-one-path-transitivity-alt2.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
   kore-reachability-one-path-transitivity-alt2 $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ph4 ) ) ) ) $. $}
${ kore-reachability-one-path-case-star.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   kore-reachability-one-path-case-star.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   kore-reachability-one-path-case-star.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
   kore-reachability-one-path-case-star.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) ) $.
   kore-reachability-one-path-case-star.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
   kore-reachability-one-path-case-star $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ( \kore-or ph0 ph2 ph3 ) ph4 ) ) ) ) $. $}
${ $d X xX $.
   $d X ph0 $.
   $d X ph1 $.
   fresh-in-kore-always.0 $e #Fresh xX ph0 $.
   fresh-in-kore-always.1 $e #Fresh xX ph1 $.
   fresh-in-kore-always $a #Fresh xX ( \kore-always ph0 ph1 ) $. $}
${ $d X xX $.
   $d X ph0 $.
   $d X ph1 $.
   fresh-in-kore-circularity.0 $e #Fresh xX ph0 $.
   fresh-in-kore-circularity.1 $e #Fresh xX ph1 $.
   fresh-in-kore-circularity $a #Fresh xX ( \kore-circularity ph0 ph1 ) $. $}
${ $d x ph1 $.
   disjointness-exists.0 $e |- ( \not ( \and ph1 ( \sorted-exists x ph2 ph3 ) ) ) $.
   disjointness-exists $a |- ( \imp ( \in-sort x ph2 ) ( \not ( \and ph1 ph3 ) ) ) $. $}
${ disjointness-to-not-in.0 $e |- ( \is-predicate th0 ) $.
   disjointness-to-not-in.1 $e |- ( \imp th0 ( \ceil ph1 ) ) $.
   disjointness-to-not-in.2 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
   disjointness-to-not-in.3 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
   disjointness-to-not-in.4 $e |- ( \imp th0 ( \not ( \and ph1 ph2 ) ) ) $.
   disjointness-to-not-in $a |- ( \imp th0 ( \kore-valid ph3 ( \kore-not ph3 ( \kore-in ph0 ph3 ph1 ph2 ) ) ) ) $. $}
${ desugar-not-to-imp.0 $e |- ( \not ph0 ) $.
   desugar-not-to-imp $a |- ( \imp ph0 \bot ) $. $}
${ sugar-imp-to-not.0 $e |- ( \imp ph0 \bot ) $.
   sugar-imp-to-not $a |- ( \not ph0 ) $. $}

$v xX0 $.
xX0-variable $f #Variable xX0 $.

$v ptn0 ptn1 ptn2 $.
ptn0-pattern $f #Pattern ptn0 $.
ptn1-pattern $f #Pattern ptn1 $.
ptn2-pattern $f #Pattern ptn2 $.

$v kore-sort-var-To $.
kore-sort-var-To-elementvariable $f #ElementVariable kore-sort-var-To $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To $.

$v kore-sort-var-From $.
kore-sort-var-From-elementvariable $f #ElementVariable kore-sort-var-From $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From $.

$v ptn3 ptn4 $.
ptn3-pattern $f #Pattern ptn3 $.
ptn4-pattern $f #Pattern ptn4 $.

$v kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 $.
kore-sort-var-R-elementvariable $f #ElementVariable kore-sort-var-R $.
kore-element-var-VE0-elementvariable $f #ElementVariable kore-element-var-VE0 $.
kore-element-var-VE2-elementvariable $f #ElementVariable kore-element-var-VE2 $.
kore-element-var-VE1-elementvariable $f #ElementVariable kore-element-var-VE1 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 $.

$v kore-element-var-VE4 kore-element-var-VE3 $.
kore-element-var-VE4-elementvariable $f #ElementVariable kore-element-var-VE4 $.
kore-element-var-VE3-elementvariable $f #ElementVariable kore-element-var-VE3 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 $.

$v kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 $.
kore-element-var-V0-elementvariable $f #ElementVariable kore-element-var-V0 $.
kore-element-var-V1-elementvariable $f #ElementVariable kore-element-var-V1 $.
kore-element-var-V2-elementvariable $f #ElementVariable kore-element-var-V2 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 $.

$v ptn5 ptn6 ptn7 ptn8 $.
ptn5-pattern $f #Pattern ptn5 $.
ptn6-pattern $f #Pattern ptn6 $.
ptn7-pattern $f #Pattern ptn7 $.
ptn8-pattern $f #Pattern ptn8 $.

$v kore-sort-var-SortSort $.
kore-sort-var-SortSort-elementvariable $f #ElementVariable kore-sort-var-SortSort $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort $.

$v kore-element-var-Val kore-element-var-From $.
kore-element-var-Val-elementvariable $f #ElementVariable kore-element-var-Val $.
kore-element-var-From-elementvariable $f #ElementVariable kore-element-var-From $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From $.

$v kore-element-var-K0 $.
kore-element-var-K0-elementvariable $f #ElementVariable kore-element-var-K0 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 $.

$v kore-element-var-K1 $.
kore-element-var-K1-elementvariable $f #ElementVariable kore-element-var-K1 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 $.

$v kore-element-var-K2 $.
kore-element-var-K2-elementvariable $f #ElementVariable kore-element-var-K2 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 $.

$v kore-element-var-K3 $.
kore-element-var-K3-elementvariable $f #ElementVariable kore-element-var-K3 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 $.

$v kore-element-var-K $.
kore-element-var-K-elementvariable $f #ElementVariable kore-element-var-K $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K $.

$v kore-sort-var-Q0 kore-element-var-VS1 kore-element-var-VS0 $.
kore-sort-var-Q0-elementvariable $f #ElementVariable kore-sort-var-Q0 $.
kore-element-var-VS1-setvariable $f #SetVariable kore-element-var-VS1 $.
kore-element-var-VS0-setvariable $f #SetVariable kore-element-var-VS0 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 $.

$v kore-sort-var-x0 kore-element-var-x1 $.
kore-sort-var-x0-elementvariable $f #ElementVariable kore-sort-var-x0 $.
kore-element-var-x1-elementvariable $f #ElementVariable kore-element-var-x1 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 $.

$v kore-element-var-VE5 $.
kore-element-var-VE5-elementvariable $f #ElementVariable kore-element-var-VE5 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 $.

$v kore-element-var-VE6 $.
kore-element-var-VE6-elementvariable $f #ElementVariable kore-element-var-VE6 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 kore-element-var-VE6 $.

$v kore-element-var-VE7 $.
kore-element-var-VE7-elementvariable $f #ElementVariable kore-element-var-VE7 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 kore-element-var-VE6 kore-element-var-VE7 $.

$v kore-element-var-VS2 $.
kore-element-var-VS2-setvariable $f #SetVariable kore-element-var-VS2 $.

$v kore-sort-var-S3 kore-sort-var-S2 kore-sort-var-S1 kore-element-var-T $.
kore-sort-var-S3-elementvariable $f #ElementVariable kore-sort-var-S3 $.
kore-sort-var-S2-elementvariable $f #ElementVariable kore-sort-var-S2 $.
kore-sort-var-S1-elementvariable $f #ElementVariable kore-sort-var-S1 $.
kore-element-var-T-elementvariable $f #ElementVariable kore-element-var-T $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 kore-element-var-VE6 kore-element-var-VE7 kore-sort-var-S3 kore-sort-var-S2 kore-sort-var-S1 kore-element-var-T $.

$v kore-element-var-x0 $.
kore-element-var-x0-elementvariable $f #ElementVariable kore-element-var-x0 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 kore-element-var-VE6 kore-element-var-VE7 kore-sort-var-S3 kore-sort-var-S2 kore-sort-var-S1 kore-element-var-T kore-element-var-x0 $.

$v kore-element-var-x2 $.
kore-element-var-x2-elementvariable $f #ElementVariable kore-element-var-x2 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 kore-element-var-VE6 kore-element-var-VE7 kore-sort-var-S3 kore-sort-var-S2 kore-sort-var-S1 kore-element-var-T kore-element-var-x0 kore-element-var-x2 $.

$v kore-sort-var-x1 $.
kore-sort-var-x1-elementvariable $f #ElementVariable kore-sort-var-x1 $.
$d x y z w x0 x1 x2 x3 s0 s1 s2 s3 kore-sort-var-To kore-sort-var-From kore-sort-var-R kore-element-var-VE0 kore-element-var-VE2 kore-element-var-VE1 kore-element-var-VE4 kore-element-var-VE3 kore-element-var-V0 kore-element-var-V1 kore-element-var-V2 kore-sort-var-SortSort kore-element-var-Val kore-element-var-From kore-element-var-K0 kore-element-var-K1 kore-element-var-K2 kore-element-var-K3 kore-element-var-K kore-sort-var-Q0 kore-sort-var-x0 kore-element-var-x1 kore-element-var-VE5 kore-element-var-VE6 kore-element-var-VE7 kore-sort-var-S3 kore-sort-var-S2 kore-sort-var-S1 kore-element-var-T kore-element-var-x0 kore-element-var-x2 kore-sort-var-x1 $.

