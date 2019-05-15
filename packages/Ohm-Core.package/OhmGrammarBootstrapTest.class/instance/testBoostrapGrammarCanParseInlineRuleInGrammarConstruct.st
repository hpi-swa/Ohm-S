tests
testBoostrapGrammarCanParseInlineRuleInGrammarConstruct

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { foo = "foo" -- inlineFoo
											| "bar" }' startingFrom: 'Grammars').