tests
testLookaheadMatchesAndDoesNotMove

	| lookaheadExpression |
	lookaheadExpression := OhmPExprLookahead newOn: (OhmPExprString newOn: 'hello').
	self 
		assertParsingExpression: lookaheadExpression 
		compliesWithItsFixture: #expressionMatch.