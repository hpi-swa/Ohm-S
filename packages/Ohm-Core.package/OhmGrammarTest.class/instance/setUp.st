as yet unclassified
setUp

	| ruleDictionary |
	self fixtureRuleFoo: (OhmPExprString newOn: 'foo').
	
	ruleDictionary := Dictionary new.
	ruleDictionary
		at: #foo 
		put: self fixtureRuleFoo.

	self fixtureGrammar: (OhmGrammar 
							newWithName: 'TestGrammar'
							ruleDictionary: ruleDictionary)