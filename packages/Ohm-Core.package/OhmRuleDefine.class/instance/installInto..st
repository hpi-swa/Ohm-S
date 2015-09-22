accessing
installInto: ruleDict 

	self body description: self description.
	ruleDict at: self ruleName put: self body.