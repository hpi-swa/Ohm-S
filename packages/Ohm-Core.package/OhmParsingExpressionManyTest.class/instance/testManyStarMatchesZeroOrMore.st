tests
testManyStarMatchesZeroOrMore

	| starExpression |
	starExpression := OhmPExprMany newStarOn: (OhmPExprSeq newOn: { (OhmPExprString newOn: 'a') . (OhmPExprString newOn: 'b') }).
	self 
		assertParsingExpression: starExpression 
		compliesWithFixture: #matchContents
		fromFixtureSet: #ohmPExprStar.