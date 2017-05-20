testing
testApplyAppliesAnotherRule
	
	| applyExpression |
	applyExpression := OhmPExprApply newOn: #firstRule.
	self 
		assertParsingExpression: applyExpression 
		compliesWithItsFixture: #expressionMatch.
	