tests
testAltProducesIntervals

	| altExpression |
	altExpression := OhmPExprAlt newOn: { OhmPExprString newOn: 'a' . OhmPExprString newOn: 'b' }.
	self 
		assertParsingExpression: altExpression 
		compliesWithItsIntervalFixture: #matchInterval.