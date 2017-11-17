testing
testParamterizedApplyAppliesYetAnotherRule
	
	| applyExpression |
	applyExpression := OhmPExprApply newOn: #parameterRule arguments: {#firstRule}.
	self 
		assertParsingExpression: applyExpression 
		compliesWithItsFixture: #parameterizedExpressionMatch.
	