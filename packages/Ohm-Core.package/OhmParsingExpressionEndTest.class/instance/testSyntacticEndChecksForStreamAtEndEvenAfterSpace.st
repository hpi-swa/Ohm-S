tests
testSyntacticEndChecksForStreamAtEndEvenAfterSpace

	| endExpression |
	endExpression := OhmPExprSeq newOn: {OhmPExprString newOn: 'foo' . OhmPExprApply newOn: #end}.
	self 
		assertParsingExpression: endExpression 
		asSyntactic: true
		compliesWithFixture: #syntacticExpressionMatch
		fromFixtureSet: #ohmPExprEnd.