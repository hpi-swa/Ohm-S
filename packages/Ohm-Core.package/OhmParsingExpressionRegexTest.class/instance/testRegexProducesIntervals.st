as yet unclassified
testRegexProducesIntervals

	| regexExpression |
	regexExpression := OhmPExprRegex newOn: '[0-9]'.
	self 
		assertParsingExpression: regexExpression 
		compliesWithItsIntervalFixture: #matchInterval.