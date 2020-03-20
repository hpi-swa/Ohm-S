tests
testEndProducesIntervals

	| endExpression |
	endExpression := OhmPExprSeq newOn: {OhmPExprString newOn: 'foo' . OhmPExprApply newOn: #end}.
	self 
		assertParsingExpression: endExpression 
		compliesWithIntervalFixture: #matchInterval
		fromFixtureSet: #ohmPExprEnd.