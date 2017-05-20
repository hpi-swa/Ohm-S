testing
testBootstrappedGrammarContainsSourceCode

	| grammar result |
	result := (OhmGrammarOfOhm bootstrapOhmGrammar) match: OhmGrammarOfOhm ohmGrammarDefinition startingFrom: 'Grammar'.
	grammar := (OhmGrammarOfOhm bootstrapOhmGrammar semanticAction: OhmCompileGrammar new) value: result.

	self assert: (grammar rules at: #number) textualRepresentation equals: 'number  -- number
    = "-"? digit+' .