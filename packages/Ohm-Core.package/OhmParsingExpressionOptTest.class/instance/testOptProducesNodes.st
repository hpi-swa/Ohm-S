tests
testOptProducesNodes

	| optExpression |
	optExpression := OhmPExprOpt newOn: (OhmPExprString newOn: 'dr').
	self 
		assertParsingExpression: optExpression
		compliesWithItsNodeFixture: #matchTree.