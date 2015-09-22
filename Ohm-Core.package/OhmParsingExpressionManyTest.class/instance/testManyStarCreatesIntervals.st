as yet unclassified
testManyStarCreatesIntervals

	| starExpression |
	starExpression := OhmPExprMany newStarOn: (OhmPExprSeq newOn: { (OhmPExprString newOn: 'a') . (OhmPExprString newOn: 'b') }).
	self 
		assertParsingExpression: starExpression 
		compliesWithIntervalFixture: #matchInterval
		fromFixtureSet: #ohmPExprStar.