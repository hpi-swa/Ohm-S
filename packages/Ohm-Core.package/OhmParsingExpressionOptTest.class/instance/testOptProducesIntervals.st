tests
testOptProducesIntervals

	| optExpression |
	optExpression := OhmPExprOpt newOn: (OhmPExprString newOn: 'dr').
	self 
		assertParsingExpression: optExpression 
		asSyntactic: true
		compliesWithItsIntervalFixture: #matchInterval.