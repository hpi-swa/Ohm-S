as yet unclassified
testEndProducesIntervals

	| endExpression |
	endExpression := OhmPExprSeq newOn: { OhmPExprString newOn: 'foo' . OhmPExprEnd new. }.
	self 
		assertParsingExpression: endExpression 
		compliesWithIntervalFixture: #matchInterval
		fromFixtureSet: OhmPExprEnd expressionName.