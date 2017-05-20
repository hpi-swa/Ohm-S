testing
testAltArity

	self assert: 0 equals: (OhmPExprAlt newOn: {}) arity.
	self assert: 1 equals: (OhmPExprAlt newOn: {OhmPExprAnything new . OhmPExprString newOn: 'a'}) arity.
	self assert: 2 equals: (OhmPExprAlt newOn: {OhmPExprSeq newOn: {OhmPExprAnything new . OhmPExprString newOn: 'a'} . OhmPExprSeq newOn: {OhmPExprAnything new . OhmPExprString newOn: 'a'}}) arity.