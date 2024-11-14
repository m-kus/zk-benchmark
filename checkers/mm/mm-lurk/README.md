mm-lurk: π² Metamath Lurk Proof Checker and ZK Cert Generator
=============================================================

### Requirements

- [Lurk](https://github.com/argumentcomputer/lurk) interpreter.
- Python3

### Files

- `mm.lurk.sh`: Generates Lurk data from a metamath database.
  * Arguments are a metamath database, output directory for the Lurk data and the label of a theorem to be proven.
  * The script also checks if Lurk properly loads the generated Lurk data.
  * A directory `.mm-lurk` will be created if it does not exist. Two subdirectories will be created as well `.mm-lurk/tmp` and `.mm-lurk/log`.
    - Directory `.mm-lurk/tmp` saves, for each metamath database it process, a list of files contaning the statements in the source metamath database. It makes it simpler to check if the source statements are being properly translated when large database files are processed.
    - Directory `.mm-lurk/log` records the output of trying to load the generated Lurk data into Lurk. One log file is generated per metamath database.

- `src/mk_lurk_data.py`: Python script that reads a metamath database, replaces symbols that conflict with Lurk lexer, and generates Lurk data.

- `mmdump.sh`: Given a lurk data file it generates the dictionary structure required by the verifier.

- `mm-prelude.lurk`: A Lurk file with the basic includes for `mm-lurk`. 

- `mmverify.lurk`: Implementation of the metamath verifier in Lurk.

- `mmverify.sh`: An auxiliary shell script that calls Lurk interpreter with the right files. 

- `util.lurk`: A copy of the `util.lurk` files that ships with Lurk.

### Lurk data format

- Metamath comments are ignored.

- Symbols in metamath notation are replaced for symbols in Lurk as follows:
```python
{'(' : '@LP', ')' : '@RP', 
 '{' : '@LCB', '}' : '@RCB', 
 '[' : '@LSB', ']' : '@RSB', 
 ',' : '@COMMA',
 '|' : '@PP', 
 '.' : '@DT', 
 '#' : '@PS', 
 ':' : '@CN', 
 ';' : '@SC',
 '\\' : '@BS',
 '\'' : '@QUOTE',
 '\"' : '@DQ',
 '~' : '@TILDE',
 '0' : '@ZERO',
 '1' : '@ONE',
 '2' : '@TWO',
 '3' : '@THREE',
 '4' : '@FOUR',
 '5' : '@FIVE',
 '6' : '@SIX',
 '7' : '@SEVEN',
 '8' : '@EIGHT',
 '9' : '@NINE'}
```

- Every block in a metamath database (delimited by `$(` and `$)`) becomes a quoted list in Lurk, where each element of itthe quoted list is also a quoted list of the general form:
```lisp
'(:<OPCODE> <TOKEN_LIST>)
```
`OPCODE` is either `CONST`, `VARS`, `DISJ`, `FLOAT`, `LOGIC`, `AXIOM` or `PROOF`. The form of the `TOKEN_LIST` depends on the statement. For `CONST`, `VARS`, and `DISJ` is simply a list of tokens, whereas for the remaining ones there must be a token representing a label. A `PROOF` has a `$=` token that signals the begining of the identifiers representing a proof.

- Here is a simple example. The following metamath description
```
$c 0 + = -> ( ) term wff |- $.
$v t r s P Q $.
tt $f term t $.
tr $f term r $.
ts $f term s $.
wp $f wff P $.
wq $f wff Q $.
tze $a term 0 $.
tpl $a term ( t + r ) $.
weq $a wff t = r $.
wim $a wff ( P -> Q ) $.
a1 $a |- ( t = r -> ( t = s -> r = s ) ) $.
a2 $a |- ( t + 0 ) = t $.
${
   min $e |- P $.
   maj $e |- ( P -> Q ) $.
   mp  $a |- Q $.
$}
th1 $p |- t = t $=
    tt tze tpl tt weq tt tt weq tt a2 tt tze tpl
    tt weq tt tze tpl tt weq tt tt weq wim tt a2
    tt tze tpl tt tt a1 mp mp
 $.
```
becomes this Lurk quoted list:
```lisp
'(
	(:CONST @ZERO + = -> @LP @RP term wff @PP-)
	(:VARS t r s P Q)
	(:FLOAT tt term t)
	(:FLOAT tr term r)
	(:FLOAT ts term s)
	(:FLOAT wp wff P)
	(:FLOAT wq wff Q)
	(:ASSERT tze term @ZERO)
	(:ASSERT tpl term @LP t + r @RP)
	(:ASSERT weq wff t = r)
	(:ASSERT wim wff @LP P -> Q @RP)
	(:ASSERT a@ONE @PP- @LP t = r -> @LP t = s -> r = s @RP @RP)
	(:ASSERT a@TWO @PP- @LP t + @ZERO @RP = t)
	(:BLOCK
		(:LOGIC min @PP- P)
		(:LOGIC maj @PP- @LP P -> Q @RP)
		(:ASSERT mp @PP- Q)
	)
	(:PROOF th@ONE (@PP- t = t) (tt tze tpl tt weq tt tt weq tt a@TWO tt tze tpl tt weq tt tze tpl tt weq tt tt weq wim tt a@TWO tt tze tpl tt tt a@ONE mp mp))
)
```

### Testing

- Invoking `mm-lurk` with `demo0.mm`:
```shell
./mm-lurk.sh checker/mm/common/metamath-files/metamath-test/demo0.mm lurk_data/ th@ONE
```
(Note: This example currently produces an error as the verification procedure is not fully implemented.)

- Dumping the dictionary representation of `demo0.mm`. (Assumes prior execution of the previous command.):
```shell
./mm-lurk.sh -d lurk_data/demo0.mm.lurk
```