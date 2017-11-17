rule finalization
override: ruleName body: b

	self resultRules add: (OhmRuleOverride 
			newNamed: ruleName 
			body: b 
			textualRepresentation: self textualRepresentation).
	^ b