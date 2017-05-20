testing
testRegexArity

	self assert: 1 equals: (OhmPExprRegex newOn: '[0-9]') arity.
