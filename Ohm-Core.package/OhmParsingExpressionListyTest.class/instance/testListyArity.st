as yet unclassified
testListyArity

	self assert: 2 equals: (OhmPExprListy newOn: (OhmPExprSeq newOn: { OhmPExprPrimObject newOn: 2 . OhmPExprPrimObject newOn: 3 })) arity.
