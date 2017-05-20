testing
testLookAheadArity

	self assert: 2 equals: (OhmPExprLookahead newOn: (OhmPExprSeq newOn: { OhmPExprString newOn: 'a' . OhmPExprString newOn: 'b' })) arity.