as yet unclassified
testManyArity
	
	| testExpression |
	testExpression := (OhmPExprSeq newOn: { OhmPExprString newOn: 'a' . OhmPExprString newOn: 'b' }).
	self assert: 2 equals: (OhmPExprMany newOn: testExpression minimalMatches: 0) arity.
	self assert: 2 equals: (OhmPExprMany newOn: testExpression minimalMatches: 1) arity.
	
	self assert: 2 equals: (OhmPExprMany newStarOn: testExpression) arity.
	self assert: 2 equals: (OhmPExprMany newPlusOn: testExpression) arity.