as yet unclassified
testBoostrapGrammarCanParseWhitespaceAfterGrammar

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { foo = ("foo" | "bar") } ' startingFrom: 'Grammars').