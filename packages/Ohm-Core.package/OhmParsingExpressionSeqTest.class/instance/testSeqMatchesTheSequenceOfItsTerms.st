testing
testSeqMatchesTheSequenceOfItsTerms

	| seqExpression |
	seqExpression := OhmPExprSeq newOn: { OhmPExprString newOn: 'a' . 
												OhmPExprString newOn: 'bc' .
												OhmPExprString newOn: 'z' }.
	self 
		assertParsingExpression: seqExpression 
		asSyntactic: true
		compliesWithItsFixture: #syntacticExpressionMatch.