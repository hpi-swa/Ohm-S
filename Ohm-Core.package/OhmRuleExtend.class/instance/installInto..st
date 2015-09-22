accessing
installInto: ruleDict 

	| newBody |
	newBody := OhmPExprAlt newOn: { self body . self baseRule }.
	newBody description: self baseRule description.

	ruleDict at: self ruleName put: newBody

	