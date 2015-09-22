as yet unclassified
testNotMatchesAndDoesNotMove

	| notExpression |
	notExpression := OhmPExprNot newOn: (OhmPExprString newOn: 'hello').
	self 
		assertParsingExpression: notExpression 
		compliesWithItsFixture: #expressionMatch.