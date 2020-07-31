tests
testApplyProducesIntervals
	
	| applyExpression |
	applyExpression := OhmPExprApply newOn: #FirstRule.
	self 
		assertParsingExpression: applyExpression 
		compliesWithItsIntervalFixture: #matchSyntacticInterval.
	