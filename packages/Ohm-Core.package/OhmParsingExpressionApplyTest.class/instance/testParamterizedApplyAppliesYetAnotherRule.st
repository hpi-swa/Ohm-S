tests
testParamterizedApplyAppliesYetAnotherRule
	
	| applyExpression |
	applyExpression := OhmPExprApply newOn: #parameterRule arguments: {OhmPExprApply newOn: #firstRule}.
	self 
		assertParsingExpression: applyExpression 
		compliesWithItsFixture: #parameterizedExpressionMatch.
	