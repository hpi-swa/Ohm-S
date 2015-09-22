as yet unclassified
testRegexMatchesItsRegex

	| regexExpression |
	regexExpression := OhmPExprRegex newOn: '[0-9]'.
	self 
		assertParsingExpression: regexExpression 
		compliesWithItsFixture: #expressionMatch.