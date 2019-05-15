tests
testAssertSeqArity

	self assert: 0 equals: (OhmPExprSeq newOn: {}) arity.

	self assert: 2 equals: (OhmPExprSeq newOn: { OhmPExprAnything new . OhmPExprAnything new}) arity.