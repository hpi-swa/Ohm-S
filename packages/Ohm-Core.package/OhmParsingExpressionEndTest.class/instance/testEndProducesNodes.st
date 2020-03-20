tests
testEndProducesNodes

	| endExpression |
	endExpression := OhmPExprSeq newOn: {OhmPExprString newOn: 'foo' . OhmPExprApply newOn: #end}.
	self 
		assertParsingExpression: endExpression 
		compliesWithNodeFixture: #matchTree
		fromFixtureSet: #ohmPExprEnd.