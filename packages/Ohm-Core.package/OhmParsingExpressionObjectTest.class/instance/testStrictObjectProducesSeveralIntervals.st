testing
testStrictObjectProducesSeveralIntervals

	| objectExpression |
	objectExpression := OhmPExprObject newOn: { #x => (OhmPExprPrimObject newOn: 1) . #y => (OhmPExprPrimObject newOn: 2) } inMode: #strict.
	self 
		assertParsingExpression: objectExpression
		compliesWithItsIntervalFixture: #matchIntervalStrict.