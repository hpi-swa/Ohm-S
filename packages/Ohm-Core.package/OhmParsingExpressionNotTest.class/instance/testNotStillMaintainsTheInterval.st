testing
testNotStillMaintainsTheInterval

	| notExpression |
	notExpression := OhmPExprNot newOn: (OhmPExprString newOn: 'hello').
	self 
		assertParsingExpression: notExpression 
		compliesWithItsIntervalFixture: #matchInterval.