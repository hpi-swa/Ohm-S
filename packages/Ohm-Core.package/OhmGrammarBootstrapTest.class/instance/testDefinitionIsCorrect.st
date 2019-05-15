tests
testDefinitionIsCorrect

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: self ohmGrammarDefinition startingFrom: 'Grammars').