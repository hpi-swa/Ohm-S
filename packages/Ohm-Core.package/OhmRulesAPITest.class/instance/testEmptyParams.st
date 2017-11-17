testing
testEmptyParams

	| fooRule testGrammar |
	testGrammar := OhmGrammar newWithName: #testGrammar ruleDictionary: Dictionary new.
	fooRule := OhmRuleDefine newNamed: #foo body: (OhmPExprSeq newOn: {OhmPExprApply newOn: #bar}).
	
	testGrammar ruleDeclarations at: fooRule ruleName put: fooRule.
	fooRule boundGrammar: testGrammar.
	
	self assert: fooRule parameters isEmpty