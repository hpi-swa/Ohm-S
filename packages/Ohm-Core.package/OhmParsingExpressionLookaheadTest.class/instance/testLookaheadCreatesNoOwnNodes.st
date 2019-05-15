tests
testLookaheadCreatesNoOwnNodes

	| lookaheadExpression |
	lookaheadExpression := OhmPExprSeq newOn: { OhmPExprLookahead newOn: (OhmPExprString newOn: 'hello') . OhmPExprString newOn: 'hello' }.
	self 
		assertParsingExpression: lookaheadExpression 
		compliesWithNodeFixture: #matchTree
		fromFixtureSet: OhmPExprLookahead expressionName.