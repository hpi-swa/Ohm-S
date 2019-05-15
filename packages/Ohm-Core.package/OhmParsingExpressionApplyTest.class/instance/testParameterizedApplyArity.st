tests
testParameterizedApplyArity

	self assert: 1 equals: (OhmPExprApply newOn: #parameterRule arguments: {#firstRule}) arity.