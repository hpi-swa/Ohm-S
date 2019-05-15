tests
testCaseInsensitiveMatches
	
	| actualExpression freshExpression |
	freshExpression := self exampleExpression.
	actualExpression := freshExpression replaceParametersWithArguments: {OhmPExprString newOn: 'AbC'}.
	
	self 
		assertParsingExpression: actualExpression
		compliesWithItsFixture: #expressionMatch.
	