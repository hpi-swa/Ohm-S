tests
testNotArity

	self assert: 0 equals: (OhmPExprNot newOn: OhmParsingExpression new) arity.
	self assert: 0 equals: (OhmPExprNot newOn: (OhmPExprString newOn: 'a')) arity.