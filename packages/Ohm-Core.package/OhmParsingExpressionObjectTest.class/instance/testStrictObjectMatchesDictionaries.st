testing
testStrictObjectMatchesDictionaries

	| objectExpression |
	objectExpression := OhmPExprObject newOn:  { #x => (OhmPExprPrimObject newOn: 1) . #y => (OhmPExprPrimObject newOn: 2) } inMode: #strict.
	self 
		assertParsingExpression: objectExpression 
		asSyntactic: false
		compliesWithItsFixture: #matchContentsStrict.