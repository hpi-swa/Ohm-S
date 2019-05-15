tests
testRangeProducesIntervals

	| rangeExpression |
	rangeExpression := OhmPExprRange newFrom: $0 to: $9.
	self 
		assertParsingExpression: rangeExpression 
		asSyntactic: true
		compliesWithItsIntervalFixture: #matchInterval.