tests
testManyPlusCreatesNodes

	| plusExpression |
	plusExpression := OhmPExprMany newPlusOn: (OhmPExprSeq newOn: { (OhmPExprString newOn: 'a') . (OhmPExprString newOn: 'b') }).
	self 
		assertParsingExpression: plusExpression 
		compliesWithNodeFixture: #matchTree
		fromFixtureSet: #ohmPExprPlus.