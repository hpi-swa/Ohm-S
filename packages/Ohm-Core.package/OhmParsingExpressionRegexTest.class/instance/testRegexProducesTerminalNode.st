testing
testRegexProducesTerminalNode

	| regexExpression |
	regexExpression := OhmPExprRegex newOn: '[0-9]'.
	self 
		assertParsingExpression: regexExpression 
		compliesWithItsNodeFixture: #matchTree.