tests
testSyntacticManyStarMatchesZeroOrMore

	| starExpression |
	starExpression := OhmPExprMany newStarOn: ( OhmPExprString newOn: 'a' ).
	self 
		assertParsingExpression: starExpression 
		asSyntactic: true
		compliesWithFixture: #syntacticExpressionMatch
		fromFixtureSet: #ohmPExprStar.