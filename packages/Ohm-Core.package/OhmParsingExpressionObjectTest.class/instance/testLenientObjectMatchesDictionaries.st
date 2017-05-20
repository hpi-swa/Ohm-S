testing
testLenientObjectMatchesDictionaries

	| objectExpression |
	objectExpression := OhmPExprObject newOn: { #x => (OhmPExprPrimObject newOn: 1) . #y => (OhmPExprPrimObject newOn: 2) } inMode: #lenient.
	self 
		assertParsingExpression: objectExpression 
		asSyntactic: false
		compliesWithItsFixture: #matchContentsLenient.