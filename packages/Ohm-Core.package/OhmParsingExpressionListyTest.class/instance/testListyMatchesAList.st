as yet unclassified
testListyMatchesAList

	| listyExpression |
	listyExpression := OhmPExprListy newOn: (OhmPExprSeq newOn: { OhmPExprString newOn: 'foo' . OhmPExprString newOn: 'bar' }).
	self 
		assertParsingExpression: listyExpression 
		asSyntactic: false
		compliesWithItsFixture: #matchContents.