build-instructions
apply: ruleName withArguments: arguments

	^ (self parameterNames includes: ruleName)
		ifTrue: [OhmPExprParam newOn: (self parameterNames indexOf: ruleName)]
		ifFalse: [OhmPExprApply newOn: ruleName arguments: arguments]