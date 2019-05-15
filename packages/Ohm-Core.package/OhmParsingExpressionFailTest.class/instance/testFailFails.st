tests
testFailFails

	| failExpression |
	failExpression := OhmPExprFail new.
	self 
		assertParsingExpression: failExpression 
		compliesWithItsFixture: #expressionMatch.