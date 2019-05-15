tests
testSeqProducesNoNodes

	| seqExpression |
	seqExpression := OhmPExprSeq newOn: { OhmPExprString newOn: 'a' . 
												OhmPExprString newOn: 'bc' .
												OhmPExprString newOn: 'z' }.
	self 
		assertParsingExpression: seqExpression
		compliesWithItsNodeFixture: #matchTree.