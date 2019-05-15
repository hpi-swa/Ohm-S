tests
testDefinitionIsCorrect

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: OhmGrammarOfOhm ohmGrammarDefinition startingFrom: 'Grammars').