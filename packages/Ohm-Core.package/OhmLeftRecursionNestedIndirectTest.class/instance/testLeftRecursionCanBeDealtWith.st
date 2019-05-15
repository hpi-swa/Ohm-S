tests
testLeftRecursionCanBeDealtWith

	"G {
		addExpr = a | c
		a = b
		b = addExprRec
		addExprRec = addExpr ""+"" mulExpr
		c = d
		d = mulExpr
		mulExpr = e | g
		e = f
		f = mulExprRec
		g = h
		h = priExpr
		mulExprRec = mulExpr ""*"" priExpr
		priExpr = /[0-9]/ }"
	| grammar b |
	b := OhmGrammarBuilder new.
	b setGrammarName: 'TestGrammar'.
	b addRule: #addExpr as: (b alt: { b apply: #a . b apply: #c}).
	b addRule: #a as: (b apply: #b).
	b addRule: #b as: (b apply: #addExprRec).
	b addRule: #addExprRec as: (b seq: { b apply: #addExpr . b string: '+' . b apply: #mulExpr }).
	b addRule: #c as: (b apply: #d).
	b addRule: #d as: (b apply: #mulExpr).
	b addRule: #mulExpr as: (b alt: { b apply: #e . b apply: #g }).
	b addRule: #e as: (b apply: #f).
	b addRule: #f as: (b apply: #mulExprRec).
	b addRule: #g as: (b apply: #h).
	b addRule: #h as: (b apply: #priExpr).
	b addRule: #mulExprRec as: (b seq: { b apply: #mulExpr . b string: '*' . b apply: #priExpr }).
	b addRule: #priExpr as: (b regex: '[0-9]').

	grammar := b buildGrammar.

	self 
		assertGrammar: grammar
		startingFrom: #addExpr
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionNestedIndirect
	