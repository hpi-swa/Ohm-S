accessing
doEval: state
	
	^ (OhmPExprApplyInvocation
		newFor: ruleName
		with: (self ruleBodyOn: state)
		on: state) result