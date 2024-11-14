#!/usr/bin/env python3

# This script can be used to generate pairs of metamath files with
# the exact same proof claims, number of tokens, and number of proof
# steps, but manipulate different sizes of intermediate terms in
# the proof. This is the "total term size" statistic in mmtool.

# The proofs are constructed by applying an identity axiom many
# times either before or after a section of the proof that increases
# term size by repeated doubling.

setup_prefix = '''\
$c #WF |- ( ) -> x b $.
$v t0 tf0 $.
t0-wf $f #WF t0 $.
tf0-true $f |- tf0 $.
ax-x $a |- x $.
'''
# The alternate form double_odd produces terms of odd length,
# which is signficant for riscV implementations using 16-bit tokens
# because it determines the parity mod 4 of the difference between
# the addresses of different terms, which determines how effectively
# aligned u32 loads and stores can be used for memcpy and memcmp.

# Most of the copying work goes into applying the identity axioms,
# and the mmlib checker writes subst outputs sequentially into
# a contiguous buffer, so the "even" option probably has the best
# case with distances of 4N bytes and the "odd" option the worst
# with offsets of 4N+2 bytes

# Note that the two instances of tf0 will be an odd number
# of tokens apart in the target string if either version of
# double is repeatedly applied, because double_even will have
# even-length tf0 followed by the -> token before the second tf0,
# and double-odd has an odd-length tf0 immediately before the second.
double_even = '${ double $a |- ( tf0 -> tf0 ) $. $}\n'
double_odd =  '${ double $a |- ( tf0 tf0 ) $. $}\n'

setup_suffix = '''\
$( Has a hypothesis so the variable is mentioned, we
   would not have the implicit dependency on tf0-true $)
${ hyp-drop $e |- tf0 $.
   ax-drop $a |- x $.
$}

${ ax-id-f $a |- tf0 $. $}

${ hyp-t0 $e |- t0 $.
   ax-id $a |- t0 $. $}

${ ax-proven-wf $a #WF tf0 $. $}

$( first proof is left consuming maximum space so the peak
   memory and the size hint stays the same as we vary the
   later proofs $)
'''

def print_setup(parity_odd):
    print(setup_prefix)
    if parity_odd:
        print(double_odd)
    else:
        print(double_even)
    print(setup_suffix)

def print_reps(char, count):
    while count >= 60:
        print('  '+char*60)
        count -= 60
    if count > 0:
        print('  '+char*count)


def printproof_simple(label, doublings, count_before, count_after):
    print(label,'$p |- x $= ( ax-id-f ax-x double ax-drop )')
    print('  B')
    print_reps('A',count_before)
    print_reps('C',doublings)
    print_reps('A',count_after)
    print('  ZED')
    print('$.')

'Print an example using the simple form of the axiom lemma'
def print_example_simple(num, doublings, count_before, count_after, parity_odd):
    print_setup(parity_odd)
    printproof_simple('pmaxsize',doublings, 0, count_before + count_after)
    for i in range(num):
        printproof_simple('p'+str(i), doublings, count_before, count_after)

def mm_encode(num):
    if num <= 0:
        error('Num must be positive')
    (upper,d) = divmod(num-1,20)
    digits = [chr(d+ord('A'))]
    while upper > 0:
        (upper,d) = divmod(upper-1, 5)
        digits.append(chr(d+ord('U')))
    return ''.join(reversed(digits))

def print_wfreps(zop, nextz, command, count):
    commands = []
    while count > 0:
        commands.append(zop+mm_encode(nextz)+command)
        nextz += 1
        count -= 1
        if len(commands) == 12:
            print(' ',*commands)
            commands.clear()
    if len(commands) > 0:
        print(' ',*commands)
    return nextz

def printproof_syntax(label, doublings, count_before, count_after):
    print(label,'$p |- x $= ( ax-id ax-x double ax-proven-wf ax-drop )')
    print('  B')
    nextz = 6
    nextz = print_wfreps('ZD', nextz, 'A', count_before)
    print_reps('C',doublings)
    nextz = print_wfreps('ZD', nextz,'A', count_after)
    print_wfreps('Z', nextz, 'E', 1)
    print('$.')

'Print an example using the form of axiom lemma that needs a well-formedness and a proof hypothesis'
def print_example_syntax(num, doublings, count_before, count_after, parity_odd):
    print_setup(parity_odd)
    printproof_syntax('pmaxsize',doublings, 0, count_before + count_after)
    for i in range(num):
        printproof_syntax('p'+str(i), doublings, count_before, count_after)

syn_small = '''\
$p |- x $= ( ax-id ax-x double ax-proven-wf ax-drop )
  B D
  ZCEA ZCFA ZCGA ZCHA ZCIA ZCJA ZCKA ZCLA ZCMA ZCNA ZCOA ZCPA ZCQA ZCRA ZCSA ZCTA 
  ZCUAA ZCUBA ZCUCA ZCUDA ZCUEA ZCUFA ZCUGA ZCUHA ZCUIA ZCUJA ZCUKA ZCULA ZCUMA ZCUNA ZCUOA ZCUPA ZCUQA ZCURA ZCUSA ZCUTA
$.
'''

if __name__ == '__main__':
    import sys

    def usage_exit():
        print(f'Usage: {sys.argv[0]} [--syn|--odd] NUM_PROOFS DOUBLINGS STEPS_BEFORE STEPS_AFTER')
        sys.exit(1)
    
    if len(sys.argv) < 5:
        usage_exit()

    syntax = False
    parity_odd = False
    while True:
        if sys.argv[1] == '--syn':
            del sys.argv[1]
            syntax = True
        elif sys.argv[1] == '--odd':
            del sys.argv[1]
            parity_odd = True
        else:
            break

    if len(sys.argv) != 5:
        usage_exit()

    num=int(sys.argv[1])
    doublings=int(sys.argv[2])
    before=int(sys.argv[3])
    after=int(sys.argv[4])

    if syntax:
        print_example_syntax(num, doublings, before, after, parity_odd)
    else:
        print_example_simple(num, doublings, before, after, parity_odd)
