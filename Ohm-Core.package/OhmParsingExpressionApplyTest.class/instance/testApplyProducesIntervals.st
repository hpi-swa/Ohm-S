as yet unclassified
testApplyProducesIntervals
	
	| applyExpression |
	applyExpression := OhmPExprApply newOn: #firstRule.
	self 
		assertParsingExpression: applyExpression 
		compliesWithItsIntervalFixture: #matchInterval.
	