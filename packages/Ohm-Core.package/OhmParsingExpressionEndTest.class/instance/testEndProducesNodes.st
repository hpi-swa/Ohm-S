tests
testEndProducesNodes

	| endExpression |
	endExpression := OhmPExprSeq newOn: { OhmPExprString newOn: 'foo' . OhmPExprEnd new. }.
	self 
		assertParsingExpression: endExpression 
		compliesWithNodeFixture: #matchTree
		fromFixtureSet: OhmPExprEnd expressionName.