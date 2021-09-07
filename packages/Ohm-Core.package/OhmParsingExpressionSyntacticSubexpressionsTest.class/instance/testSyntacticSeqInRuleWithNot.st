tests
testSyntacticSeqInRuleWithNot
	
	| expression |
	additionalRules := Dictionary newFrom: {
		#SyntacticRule -> (OhmPExprSeq newOn: {OhmPExprString newOn: 'a' . OhmPExprNot newOn: (OhmPExprString newOn: 'b')}) }.
	
	expression := OhmPExprApply newOn: #SyntacticRule.	
	
	self 
		assertParsingExpression: expression 
		asSyntactic: true
		compliesWithIntervalFixture: #intervalContent
		fromFixtureSet: #syntacticSubexpressionsNot.