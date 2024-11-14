## Verification of `th1` from `demo0.mm`

This document reports on a test of `mm-lurk` listing the stack sequence output by mm-lurk and `mmverify.py` script, showing they behave equivalently for `demo0.mm` database while verifying theorem `th1`.

```shell
=====
(Step 0)
nil
=====
(Step 1)
((term t))
=====
(Step 2)
((term @ZERO) (term t))
=====
(Step 3)
((term @LP (t) + (@ZERO) @RP))
=====
(Step 4)
((term t) (term @LP (t) + (@ZERO) @RP))
=====
(Step 5)
((wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 6)
((term t) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 7)
((term t) (term t) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 8)
((wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 9)
((term t) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 10)
((@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 11)
((term t) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 12)
((term @ZERO) (term t) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 13)
((term @LP (t) + (@ZERO) @RP) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 14)
((term t) (term @LP (t) + (@ZERO) @RP) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 15)
((wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 16)
((term t) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 17)
((term @ZERO) (term t) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 18)
((term @LP (t) + (@ZERO) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 19)
((term t) (term @LP (t) + (@ZERO) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 20)
((wff (@LP (t) + (@ZERO) @RP) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 21)
((term t) (wff (@LP (t) + (@ZERO) @RP) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 22)
((term t) (term t) (wff (@LP (t) + (@ZERO) @RP) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 23)
((wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 24)
((wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 25)
((term t) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 26)
((@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 27)
((term t) (@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 28)
((term @ZERO) (term t) (@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 29)
((term @LP (t) + (@ZERO) @RP) (@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 30)
((term t) (term @LP (t) + (@ZERO) @RP) (@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 31)
((term t) (term t) (term @LP (t) + (@ZERO) @RP) (@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 32)
((@PP- @LP (@LP (t) + (@ZERO) @RP) = (t) -> @LP (@LP (t) + (@ZERO) @RP) = (t) -> (t) = (t) @RP @RP) (@PP- @LP (t) + @ZERO @RP = (t)) (wff @LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP) (wff (@LP (t) + (@ZERO) @RP) = (t)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
=====
(Step 33)
((@PP- (@LP ((@LP (t) + (@ZERO) @RP) = (t)) -> ((t) = (t)) @RP)) (@PP- @LP (t) + @ZERO @RP = (t)) (wff (t) = (t)) (wff (@LP (t) + (@ZERO) @RP) = (t)))
[9575 iterations] => ((@PP- ((t) = (t))))
```

This is the output for `mmverify.py` script.
```shell
verifying th1
Step 0
[['term', 't']]
Step 1
[['term', 't'], ['term', '0']]
Step 2
[['term', '(', 't', '+', '0', ')']]
Step 3
[['term', '(', 't', '+', '0', ')'], ['term', 't']]
Step 4
[['wff', '(', 't', '+', '0', ')', '=', 't']]
Step 5
[['wff', '(', 't', '+', '0', ')', '=', 't'], ['term', 't']]
Step 6
[['wff', '(', 't', '+', '0', ')', '=', 't'], ['term', 't'], ['term', 't']]
Step 7
[['wff', '(', 't', '+', '0', ')', '=', 't'], ['wff', 't', '=', 't']]
Step 8
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['term', 't']]
Step 9
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't']]
Step 10
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't']]
Step 11
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't'],
 ['term', '0']]
Step 12
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')']]
Step 13
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')'],
 ['term', 't']]
Step 14
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't']]
Step 15
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't']]
Step 16
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't'],
 ['term', '0']]
Step 17
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')']]
Step 18
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')'],
 ['term', 't']]
Step 19
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't']]
Step 20
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't']]
Step 21
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't'],
 ['term', 't']]
Step 22
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't']]
Step 23
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')']]
Step 24
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['term', 't']]
Step 25
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't']]
Step 26
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't']]
Step 27
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', 't'],
 ['term', '0']]
Step 28
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')']]
Step 29
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')'],
 ['term', 't']]
Step 30
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['term', '(', 't', '+', '0', ')'],
 ['term', 't'],
 ['term', 't']]
Step 31
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['|-',
  '(',
  '(',
  't',
  '+',
  '0',
  ')',
  '=',
  't',
  '->',
  '(',
  '(',
  't',
  '+',
  '0',
  ')',
  '=',
  't',
  '->',
  't',
  '=',
  't',
  ')',
  ')']]
Step 32
[['wff', '(', 't', '+', '0', ')', '=', 't'],
 ['wff', 't', '=', 't'],
 ['|-', '(', 't', '+', '0', ')', '=', 't'],
 ['|-', '(', '(', 't', '+', '0', ')', '=', 't', '->', 't', '=', 't', ')']]
Step 33
[['|-', 't', '=', 't']]
None
```