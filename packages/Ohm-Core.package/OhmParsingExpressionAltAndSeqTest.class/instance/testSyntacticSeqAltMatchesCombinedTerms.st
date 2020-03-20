tests
testSyntacticSeqAltMatchesCombinedTerms

	| altExpression |
	altExpression := OhmPExprAlt newOn: { OhmPExprSeq newOn: {
												OhmPExprString newOn: 'a' . 
												OhmPExprString newOn: 'b' . 
												OhmPExprString newOn: 'c' . } . 
											 OhmPExprSeq newOn: {
												OhmPExprString newOn: '1' . 
												OhmPExprString newOn: '2' . 
												OhmPExprString newOn: '3' . } }.
	self 
		assertParsingExpression: altExpression 
		asSyntactic: true
		compliesWithFixture: #matchContents
		fromFixtureSet: #ohmPExprAltSeqSyntactic.