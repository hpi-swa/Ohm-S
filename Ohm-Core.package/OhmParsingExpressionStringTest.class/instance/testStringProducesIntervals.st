as yet unclassified
testStringProducesIntervals

	| stringExpression |
	stringExpression := OhmPExprString newOn: 'foo'.
	self 
		assertParsingExpression: stringExpression 
		asSyntactic: true
		compliesWithItsIntervalFixture: #matchInterval.