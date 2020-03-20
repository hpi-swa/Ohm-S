tests
testOptProducesEmptyNodes

	| optExpression |
	optExpression := OhmPExprOpt newOn: (OhmPExprSeq newOn: {OhmPExprString newOn: 'dr' . OhmPExprString newOn: 'ied' } ).
		
	self 
		assertParsingExpression: optExpression
		compliesWithNodeFixture: #matchTree
		fromFixtureSet: #ohmPExprOptComplex.
	