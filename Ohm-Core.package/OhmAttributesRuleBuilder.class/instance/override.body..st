build-instructions
override: ruleName body: b

	self resultRules add: (OhmRuleOverride 
			newNamed: ruleName 
			body: b 
			textualRepresentation: self textualRepresentation
			superGrammar: nil).
	^ b