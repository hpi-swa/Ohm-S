as yet unclassified
testDefinitionIsCorrect

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: self ohmGrammarDefinition startingFrom: 'Grammars').