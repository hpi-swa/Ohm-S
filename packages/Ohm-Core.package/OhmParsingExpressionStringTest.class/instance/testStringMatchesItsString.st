testing
testStringMatchesItsString

	| stringExpression |
	stringExpression := OhmPExprString newOn: 'foo'.
	self 
		assertParsingExpression: stringExpression 
		asSyntactic: true
		compliesWithItsFixture: #expressionMatch.