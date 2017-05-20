testing
testChoicesHaveUniformArity

	| pexpr rule testGrammar |
	pexpr := OhmPExprAlt newOn: { OhmPExprString newOn: 'foo' . OhmPExprSeq newOn: { OhmPExprString newOn: '1' . OhmPExprString newOn: '2' } }.
	rule := OhmRuleDefine newNamed: #testRule body: pexpr.
	testGrammar := OhmGrammar new.
	
	self should: [ rule performChecksFor: testGrammar ] raise: OhmInconsistentArityError.