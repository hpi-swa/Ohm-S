testing
testSyntacticManyPlusMatchesZeroOrMore

	| plusExpression |
	plusExpression := OhmPExprMany newPlusOn: (OhmPExprString newOn: 'a').
	self 
		assertParsingExpression: plusExpression
		asSyntactic: true
		compliesWithFixture: #syntacticExpressionMatch
		fromFixtureSet: #ohmPExprPlus.