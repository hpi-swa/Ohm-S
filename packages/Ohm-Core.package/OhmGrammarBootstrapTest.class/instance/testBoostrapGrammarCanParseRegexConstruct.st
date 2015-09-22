as yet unclassified
testBoostrapGrammarCanParseRegexConstruct

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { foo = /[A-Z]/ }' startingFrom: 'Grammars').