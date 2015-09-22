as yet unclassified
testListyDoesNotCreateOwnNodes

	| listyExpression |
	listyExpression := OhmPExprListy newOn: (OhmPExprSeq newOn: { OhmPExprString newOn: 'foo' . OhmPExprString newOn: 'bar' }).
	self 
		assertParsingExpression: listyExpression
		compliesWithItsNodeFixture: #matchTree.