testing
testRuleCreatedWithParamsHasParams

	| fooRule testGrammar |
	testGrammar := OhmGrammar newWithName: #testGrammar ruleDictionary: Dictionary new.
	fooRule := OhmRuleDefine 
		newNamed: #foo 
		parameters: {#separator} 
		body: (OhmPExprSeq newOn: {OhmPExprApply newOn: #digit . OhmPExprParam newOn: #separator}).
	
	testGrammar ruleDeclarations at: fooRule ruleName put: fooRule.
	fooRule boundGrammar: testGrammar.
	
	self assert: fooRule parameters size equals: 1