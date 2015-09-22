as yet unclassified
testObjectArity

	self assert: 0 equals: (OhmPExprObject newOn: Dictionary new inMode: #strict) arity.
	self assert: 1 equals: (OhmPExprObject newOn: Dictionary new inMode: #lenient) arity.

	self assert: 1 equals: (OhmPExprObject newOn: (Dictionary newFrom: { #a => (OhmPExprPrimObject newOn: 1)}) inMode: #strict) arity.
	self assert: 2 equals: (OhmPExprObject newOn: (Dictionary newFrom: { #a => (OhmPExprPrimObject newOn: 1)}) inMode: #lenient) arity.