testing
testCreateAnObject

	| testExpression |
	testExpression := OhmPExprObject newOn: Dictionary new inMode: #strict.
	testExpression := OhmPExprObject newOn: Dictionary new inMode: #lenient.
