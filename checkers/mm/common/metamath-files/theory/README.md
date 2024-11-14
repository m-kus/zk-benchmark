`simple.mm` and `simple-compressed.mm`
are files proving a simple propositional result, using
the plain and compressed proof formats.
`simple-broken.mm` is an intentionally broken proof.

Large proofs based on the metamath generation from the OOPSLA and CAV
Papers:
All the large proofs from the OOPSLA and CAV papers have a common
prefix or common includes of 2552 lines and 12 million tokens
before beginning the language definition.
These large proofs are too big to currently be useful for benchmarks
and also a bit big to check into git, they are in our Google Drive at
`Team_Shared > Technical Materials > Math Proof > Sample Metamath Proofs`

Prefixes of this prelude are in files named like `proof-prelude-X-tok.mm`
and the full prelude is in `proof-prelude.mm`
None of the compressed proofs in this prefix or any of the generated
files use a `Z` to share intermediate results. Were they generated
inefficiently or was there really no opportunity for reuse?

`assign.imp.proof-ax.mm`
is a complete proof of concrete execution of an imp program,
with the size reduced by changing all proofs in the prelude
portion to axioms.
Based on imp/assign.imp.proof/ in the `Sample Metamath Proofs`

`sum.imp.spec-ax.mm`
is a proof from formal verification of a specification of
a sum program, with the prelude similarly simplified.
Based on evaluation/proofs/imp-sum.mm in the `Sample Metamath Proofs`
