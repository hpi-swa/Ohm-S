running
setUp

	| ruleDictionary |
	"G {
		foo = 'foo'
		bar = foo 'bar'
	}"
	self fixtureRuleFoo: (OhmPExprString newOn: 'foo').
	self fixtureRuleBar: (OhmPExprSeq newOn: { OhmPExprApply newOn: #foo . OhmPExprString newOn: 'bar' } ).
	
	ruleDictionary := Dictionary new.
	ruleDictionary
		at: #foo 
		put: self fixtureRuleFoo.
	ruleDictionary
		at: #bar 
		put: self fixtureRuleBar.

	self fixtureGrammar: (OhmGrammar 
							newWithName: 'TestGrammar'
							ruleDictionary: ruleDictionary)