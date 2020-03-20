tests
testEndChecksForStreamAtEnd

	| endExpression |
	endExpression := OhmPExprSeq newOn: {OhmPExprString newOn: 'foo' . OhmPExprApply newOn: #end}.
	self 
		assertParsingExpression: endExpression 
		compliesWithFixture: #matchContents
		fromFixtureSet: #ohmPExprEnd.