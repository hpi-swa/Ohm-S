as yet unclassified
testStringMatchesItsString

	| stringExpression |
	stringExpression := OhmPExprString newOn: 'foo'.
	self 
		assertParsingExpression: stringExpression 
		asSyntactic: true
		compliesWithItsFixture: #expressionMatch.