tests
testManyPlusMatchesZeroOrMore

	| plusExpression |
	plusExpression := OhmPExprMany newPlusOn: (OhmPExprSeq newOn: { (OhmPExprString newOn: 'a') . (OhmPExprString newOn: 'b') }).
	self 
		assertParsingExpression: plusExpression 
		compliesWithFixture: #matchContents
		fromFixtureSet: #ohmPExprPlus.