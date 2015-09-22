accessing
installInto: ruleDict 

	self body description: (self superGrammar ruleNamed: self ruleName) description.
	ruleDict at: self ruleName put: self body.