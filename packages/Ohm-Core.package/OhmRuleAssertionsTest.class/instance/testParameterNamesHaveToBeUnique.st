testing
testParameterNamesHaveToBeUnique

	| pexpr rule testGrammar |
	pexpr := OhmPExprString newOn: 'foo'.
	rule := OhmRuleDefine newNamed: #testRule parameters: {#a . #a} body: pexpr.
	testGrammar := OhmGrammar new.
	
	self should: [ rule performChecksFor: testGrammar ] raise: OhmDuplicateParameterName.