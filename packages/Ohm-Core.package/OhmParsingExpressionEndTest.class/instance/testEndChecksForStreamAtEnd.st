tests
testEndChecksForStreamAtEnd

	| endExpression |
	endExpression := OhmPExprSeq newOn: { OhmPExprString newOn: 'foo' . OhmPExprEnd new. }.
	self 
		assertParsingExpression: endExpression 
		compliesWithFixture: #expressionMatch
		fromFixtureSet: OhmPExprEnd expressionName.