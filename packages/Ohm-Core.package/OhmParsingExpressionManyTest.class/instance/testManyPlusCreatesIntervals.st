as yet unclassified
testManyPlusCreatesIntervals

	| plusExpression |
	plusExpression := OhmPExprMany newPlusOn: (OhmPExprSeq newOn: { (OhmPExprString newOn: 'a') . (OhmPExprString newOn: 'b') }).
	self 
		assertParsingExpression: plusExpression 
		compliesWithIntervalFixture: #matchInterval
		fromFixtureSet: #ohmPExprPlus.