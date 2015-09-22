as yet unclassified
testNotCreatesNoNodes

	| notExpression |
	notExpression := OhmPExprSeq newOn: { OhmPExprNot newOn: (OhmPExprString newOn: 'hello') . OhmPExprString newOn: 'bar'}.
 	self 
		assertParsingExpression: notExpression 
		compliesWithNodeFixture: #matchTree
		fromFixtureSet: OhmPExprNot expressionName.