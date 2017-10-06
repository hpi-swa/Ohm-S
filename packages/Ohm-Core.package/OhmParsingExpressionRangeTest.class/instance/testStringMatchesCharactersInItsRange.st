as yet unclassified
testStringMatchesCharactersInItsRange

	| rangeExpression |
	rangeExpression := OhmPExprRange newFrom: $0 to: $9.
	self 
		assertParsingExpression: rangeExpression 
		asSyntactic: true
		compliesWithItsFixture: #expressionMatch.