tests
testSyntacticManyPlusMatchesZeroOrMore

	| plusExpression |
	plusExpression := OhmPExprMany newPlusOn: (OhmPExprSeq newOn: { (OhmPExprString newOn: 'a') . (OhmPExprString newOn: 'b') }).
	self 
		assertParsingExpression: plusExpression
		asSyntactic: true
		compliesWithFixture: #matchContents
		fromFixtureSet: #ohmPExprPlusSyntactic.