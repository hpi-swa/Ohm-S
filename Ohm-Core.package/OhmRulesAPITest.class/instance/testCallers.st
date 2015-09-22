as yet unclassified
testCallers

	| barRule fooRule testGrammar |
	testGrammar := OhmGrammar newWithName: #testGrammar ruleDictionary: Dictionary new.
	fooRule := OhmRuleDefine newNamed: #foo body: (OhmPExprSeq newOn: {OhmPExprApply newOn: #bar}).
	barRule := OhmRuleDefine  newNamed: #bar body: (OhmPExprString newOn: 'bar').
	
	{ fooRule . barRule } do: [:r | 
		testGrammar ruleDeclarations at: r ruleName put: r.
		r boundGrammar: testGrammar ].
	
	self assert: barRule callersToMe size = 1.
	self assert: barRule callersToMe first equals: fooRule.