testing
testStringProducesIntervals

	| stringExpression |
	stringExpression := OhmPExprString newOn: 'foo'.
	self 
		assertParsingExpression: stringExpression 
		asSyntactic: true
		compliesWithItsIntervalFixture: #matchInterval.