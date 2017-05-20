testing
testBoostrapGrammarCanParseWhitespaceAfterGrammar

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { foo = ("foo" | "bar") } ' startingFrom: 'Grammars').