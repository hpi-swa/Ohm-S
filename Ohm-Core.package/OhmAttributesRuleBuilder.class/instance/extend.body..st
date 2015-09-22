build-instructions
extend: ruleName body: b

	self resultRules add: (OhmRuleExtend 
		newNamed: ruleName 
		body: b
		textualRepresentation: self textualRepresentation).
	
	^ b
	