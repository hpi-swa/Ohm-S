tests
testLeftRecursionCanBeDealtWithFailingNested
	"This is very specific behavior in case a nested left-recursion fails and the surrounding left recursion succeeds"
	"The #bb rule is required so that the left recursion of #a actually has to do something"
	"#d is a rule that is left recursive but always fails"
	"M {
		a = b | c
		b = bb | d
		bb = a ""+""
		d = e ""y""
		e = d | ""y""
		c = ""xff""
      }"
	 | b grammar |
	b := OhmGrammarBuilder new.
	b setGrammarName: 'M'.

	b addRule:'d'as: (b seq: {b apply: #e with: {} . b prim: 'y'}) withParameters: {}.
	b addRule:'b'as: (b alt: {b apply: #bb with: {} . b apply: #d with: {}}) withParameters: {}.
	b addRule:'bb'as: (b seq: {b apply: #a with: {} . b prim: '+'}) withParameters: {}.
	b addRule:'e'as: (b alt: {b apply: #d with: {} . b prim: 'y'}) withParameters: {}.
	b addRule:'c'as: (b prim: 'xff') withParameters: {}.
	b addRule:'a'as: (b alt: {b apply: #b with: {} . b apply: #c with: {}}) withParameters: {}.
	grammar := b buildGrammar.
	
	self assert: (grammar match: 'xff+' startingFrom: #a) succeeded