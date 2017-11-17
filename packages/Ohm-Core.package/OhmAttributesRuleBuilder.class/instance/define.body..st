rule finalization
define: ruleName body: b
	
	self resultRules add: (OhmRuleDefine 
		newNamed: ruleName 
		body: b
		textualRepresentation: self textualRepresentation
		description: self ruleDescription).
	
	^ b