tests
testBuilderSetName

	| grammar |
	b setGrammarName: 'TestGrammar'.
	grammar := b buildGrammar.
	
	self assert: 'TestGrammar' equals: grammar grammarName.