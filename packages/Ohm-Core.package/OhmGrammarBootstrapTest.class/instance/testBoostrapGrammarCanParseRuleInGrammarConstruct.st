testing
testBoostrapGrammarCanParseRuleInGrammarConstruct

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: ' G { foo = "foo" -- inlineRule
											| "bar"
											
									 Fish = "f" "ish"
									 Bird --- A kind of animal 
									    = ~ Fish
									 Mushroom = Animal?
									 Spirit = any
									 Mammal = (~Fish | ~Bird)
									 name = (letter+ | digit+)
									
									 Animals = &Fish | &Bird  }' startingFrom: 'Grammars').