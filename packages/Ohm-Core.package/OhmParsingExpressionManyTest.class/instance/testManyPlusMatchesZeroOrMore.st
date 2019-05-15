tests
testManyPlusMatchesZeroOrMore

	| plusExpression |
	plusExpression := OhmPExprMany newPlusOn: (OhmPExprString newOn: 'a').
	self 
		assertParsingExpression: plusExpression 
		compliesWithFixture: #expressionMatch
		fromFixtureSet: #ohmPExprPlus.