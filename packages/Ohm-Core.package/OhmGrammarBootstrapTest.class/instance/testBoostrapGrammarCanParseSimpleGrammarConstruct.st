as yet unclassified
testBoostrapGrammarCanParseSimpleGrammarConstruct

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { foo = ''foo'' }' startingFrom: 'Grammars').