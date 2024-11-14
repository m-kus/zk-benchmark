import sys
import os.path

class LDError(Exception): pass

class toks:
    def __init__(self, lines):
        self.lines_buf = [lines]
        self.tokbuf = []
        self.imported_files = set()

    def read(self):
        while self.tokbuf == []:
            line = self.lines_buf[-1].readline()
            if not line:
                self.lines_buf.pop().close()
                if not self.lines_buf: return None
            else:
                self.tokbuf = line.split()
                self.tokbuf.reverse()
        return self.tokbuf.pop()

    def readf(self):
        tok = self.read()
        if tok == '$[':
            print("File inclusion not supported")
            exit(1)
        # while tok == '$[':
        #     filename = self.read()
        #     endbracket = self.read()
        #     if endbracket != '$]':
        #         raise LDError('Inclusion command not terminated')
        #     filename = os.path.realpath(filename)
        #     if filename not in self.imported_files:
        #         try:
        #             self.lines_buf.append(open(filename, 'r'))
        #         except:
        #             raise LDError(f'Include file {filename} does not exist')
        #         self.imported_files.add(filename)
        #     tok = self.read()
        return tok

    def readc(self):
        while 1:
            tok = self.readf()
            if tok == None: return None
            if tok == '$(':
                while tok != '$)':
                    tok = self.read()
            else:
                return tok

    def readstat(self):
        stat = []
        tok = self.readc()
        while tok != '$.':
            if tok == None: 
                raise LDError('EOF before $.')
            stat.append(tok)
            tok = self.readc()
        return stat

class LurkData:
    def __init__(self):
        self.tok_repl = {'(' : '@LP', ')' : '@RP', 
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
        self.lurk_data = []

    def __str__(self):
        s = "'(\n"
        ident = "\t"
        for l in self.lurk_data:
            if '(:BLOCK' in l:
                s += (ident + l + '\n')
                ident += '\t'
                continue
            if l ==')':
                if len(ident) > 1:
                    ident = ident[1:]
                else:
                    ident = ''
            s += (ident + l + '\n')
        s += ')' 
        return s
    
    def replace_lurk_token(self, tok):
        if tok == "":
            raise LDError("No token to replace Lurk token for")
        for c in tok:
            if c in self.tok_repl:
                tok = tok.replace(c, self.tok_repl[c])
        return tok

    def replace_lurk_tokens(self, stat):
        _stat = []
        if not len(stat) > 0:
            raise LDError("No statement to replace Lurk tokens for")
        for i, t in enumerate(stat):
            t = self.replace_lurk_token(t)
            _stat.append(t)
        return _stat

    def make_statement(self, opcode, s):
        return f"({opcode} " + ' '.join(s) + ")"

    def _write_to_tmp(self, opcode, filename, tmp_dir, tmp_count, stmt):
        fh = None
        filename = os.path.splitext(os.path.basename(filename))[0]
        if not os.path.exists(f'./{tmp_dir}/{filename}/'):
            os.makedirs(f'./{tmp_dir}/{filename}/')
        try:
            fh = open(f'./{tmp_dir}/{filename}/{opcode}_{tmp_count}', 'w')
        except Exception as e:
            raise LDError(f'Error writing tmp file ./{tmp_dir}/{filename}/{opcode}_{tmp_count}\n{e}')    
        fh.write(stmt)
        fh.write('\n')
        fh.close()

    def _is_compressed_proof(self, proof):
        assert(proof)
        assert(proof[0] == '(')
        return True

    def _make_compressed_proof(self, raw_proof):        
        assert(self._is_compressed_proof(raw_proof))

        # Given a Python list of the form [ W_0, W_1, ... W_n ]
        # where W_i is a word in {A, ... Z},
        # a string of the form below is generated.
        # "( 'CH_0_{W_0}' 'CH_1_{W_0}', ... 'CH_n_{W_0}',
        #    ' ',
        #    'CH_0_{W_1}' 'CH_1_{W_1}', ... 'CH_n_{W_1}', 
        #    ' ',
        #     ...,
        #    'CH_0_{W_n}' 'CH_1_{W_n}', ... 'CH_n_{W_n}',
        #  )"
        # Note that for non-singleton lists there must exist a white space 
        # in betwen the characters representing each word.
        def _make_character_list(l): 
            if l:
               return ' '.join([ f"'{c}'" for w in l for c in w ])
            raise LDError("_make_compressed_proof: No compressed proof given.")

        # A compressed proof is of the form (TOK_LIST) [A-Z]+.
        # With TOK_LIST we replace Lurk tokens and create a Lurk list with the replacement resulting list.
        # With sequence [A-Z]+ we create a Lurk list of Lurk characters for each symbol in [A-Z]+.
        end_par_idx      = raw_proof.index(')')
        proof_toks       = self.replace_lurk_tokens(raw_proof[1:end_par_idx])
        comp_proof_chars = _make_character_list(raw_proof[end_par_idx + 1:])  
        return  f"(:CMP ( {' '.join(proof_toks)} ) ( {comp_proof_chars} ) )"


    # An uncompressed proof is translated into a list of lurk replaced tokens.
    # A compressed proof is translated into a list of the form:
    #   (:CMP (TOK_LIST) ('A'-'Z'_LIST))
    def _make_proof(self, raw_proof, proof):
        if raw_proof:
            if raw_proof[0] != '(': return f"({' '.join(proof)})"
            return self._make_compressed_proof(raw_proof)
        raise LDError("_make_proof: No compressed proof given.")

    def make_data(self, toks, filename, tmp_dir):     
        tok = toks.readc()
        label = None
        tmp_count = 0
        while tok not in (None, '$}'):
            if tok == '$c':
                stat = self.replace_lurk_tokens(toks.readstat())
                stmt = self.make_statement(':CONST', stat)
                self.lurk_data.append(stmt)
                self._write_to_tmp('count', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
            elif tok == '$v':
                stat = self.replace_lurk_tokens(toks.readstat())
                stmt = self.make_statement(':VARS', stat)
                self.lurk_data.append(stmt)
                self._write_to_tmp('vars', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
            elif tok == '$a':
                if not label: raise LDError('$a must have label')
                stat = self.replace_lurk_tokens(toks.readstat())
                stmt = self.make_statement(':ASSERT', [label] + stat) # stat[1:])
                self.lurk_data.append(stmt)
                self._write_to_tmp('axiom', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
                label = None
            elif tok == '$f':
                if not label: raise LDError('$f must have label')
                stat = self.replace_lurk_tokens(toks.readstat())
                stmt = self.make_statement(':FLOAT', [label] + stat)
                if len(stat) != 2: raise LDError('$f must have be length 2')
                self.lurk_data.append(stmt)
                self._write_to_tmp('float', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
                label = None
            elif tok == '$e':
                if not label: raise LDError('$e must have label')
                stat = self.replace_lurk_tokens(toks.readstat())
                stmt = self.make_statement(':LOGIC', [label] + stat)
                self.lurk_data.append(stmt)
                self._write_to_tmp('logic', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
                label = None
            elif tok == '$p':
                if not label: raise LDError('$p must have label')
                raw_stat = toks.readstat()
                stat = self.replace_lurk_tokens(raw_stat)
                proof = None
                raw_proof = None
                try:
                    i = stat.index('$=')
                    proof = stat[i + 1:]
                    raw_proof = raw_stat[i + 1:]
                    stat = stat[:i]
                except ValueError:
                     raise LDError('$p must contain proof after $=')
                stmt = self.make_statement(':PROOF', 
                                           [label] + [f"({' '.join(stat)})"] + 
                                           [self._make_proof(raw_proof, proof)])
                self.lurk_data.append(stmt)
                self._write_to_tmp('proof', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
                label = None
            elif tok == '$d': 
                stat = self.replace_lurk_tokens(toks.readstat())
                stmt = self.make_statement(':DISJ', stat)
                self.lurk_data.append(stmt)
                self._write_to_tmp('disj', filename, tmp_dir, tmp_count, f"'{stmt}")
                tmp_count += 1
            elif tok == '${':
                self.lurk_data += ["(:BLOCK"]
                self.make_data(toks, filename, tmp_dir)
                self.lurk_data += [")"]
            elif tok[0] != '$': label = self.replace_lurk_token(tok)
            else: print('tok:', tok)
            tok = toks.readc()

if __name__ == '__main__':
    ld = LurkData()
    try:
        fh = open(sys.argv[1]) # MM database
    except:
        raise LDError('File {sys.argv[1]} does not exist')
        sys.exit(1)
    try:
        ld.make_data(toks(fh), sys.argv[1], sys.argv[2]) # mm-lurk tmp files, for debugging
    except LDError as e:
        print(e)
    fh.close()
    print(ld)
