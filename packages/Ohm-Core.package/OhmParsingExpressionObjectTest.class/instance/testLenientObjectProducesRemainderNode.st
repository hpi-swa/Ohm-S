testing
testLenientObjectProducesRemainderNode

	| objectExpression |
	objectExpression := OhmPExprObject newOn: { #x => (OhmPExprPrimObject newOn: 1) . #y => (OhmPExprPrimObject newOn: 2) } inMode: #lenient.
	self 
		assertParsingExpression: objectExpression
		compliesWithItsNodeFixture: #matchTreeLenient.