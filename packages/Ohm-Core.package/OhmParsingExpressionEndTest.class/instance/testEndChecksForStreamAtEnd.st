tests
testEndChecksForStreamAtEnd

	| endExpression |
	endExpression := OhmPExprSeq newOn: { OhmPExprString newOn: 'foo' . OhmPExprEnd new. }.
	self 
		assertParsingExpression: endExpression 
		compliesWithFixture: #matchContents
		fromFixtureSet: OhmPExprEnd expressionName.