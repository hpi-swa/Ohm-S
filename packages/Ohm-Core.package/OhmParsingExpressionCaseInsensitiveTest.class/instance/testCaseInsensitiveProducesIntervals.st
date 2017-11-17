testing
testCaseInsensitiveProducesIntervals
	
	| actualExpression freshExpression |
	freshExpression := self exampleExpression.
	actualExpression := freshExpression replaceParametersWithArguments: {OhmPExprString newOn: 'AbC'}.
	
	self 
		assertParsingExpression: actualExpression
		compliesWithItsIntervalFixture: #matchInterval.
	