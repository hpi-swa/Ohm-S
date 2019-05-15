tests
testSyntacticEndChecksForStreamAtEndEvenAfterSpace

	| endExpression |
	endExpression := OhmPExprEnd new.
	self 
		assertParsingExpression: endExpression 
		asSyntactic: true
		compliesWithItsFixture: #syntacticExpressionMatch.