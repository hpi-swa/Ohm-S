as yet unclassified
testAltProducesNodes

	| altExpression |
	altExpression := OhmPExprAlt newOn: { OhmPExprString newOn: 'a' . OhmPExprString newOn: 'b' }.
	self 
		assertParsingExpression: altExpression 
		compliesWithItsNodeFixture: #matchTree.