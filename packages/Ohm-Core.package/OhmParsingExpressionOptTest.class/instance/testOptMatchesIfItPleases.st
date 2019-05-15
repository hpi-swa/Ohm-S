tests
testOptMatchesIfItPleases
	| optExpression |
	optExpression := OhmPExprOpt
				newOn: (OhmPExprString newOn: 'dr').
	self
		assertParsingExpression: optExpression
		asSyntactic: true
		compliesWithItsFixture: #expressionMatch