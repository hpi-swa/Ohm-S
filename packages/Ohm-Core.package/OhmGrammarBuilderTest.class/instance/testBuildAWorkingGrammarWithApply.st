tests
testBuildAWorkingGrammarWithApply

	| grammar |
	b setGrammarName: 'TestGrammar'.
	b addRule: 'foo' as: (b seq: { b star: ( b string: 'foo' ) . b apply: 'digit' }).
	b addRule: 'digit' as: (b regex: '[0-9]').
	grammar := b buildGrammar.
	
	self assert: (grammar doesMatch: 'foo2' startingFrom: 'foo').
	self assert: (grammar doesMatch: '2' startingFrom: 'foo').
	self assert: (grammar doesMatch: 'foofoo2' startingFrom: 'foo').