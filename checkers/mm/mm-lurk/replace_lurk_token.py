import sys
tok_repl = {'(' : '@LP', ')' : '@RP', 
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
assert len(sys.argv) == 2
tok = sys.argv[1]
if tok == "": 
    raise LDError("No token to replace Lurk token for")
for c in tok:
    if c in tok_repl:
        tok = tok.replace(c, tok_repl[c])
print(tok)
