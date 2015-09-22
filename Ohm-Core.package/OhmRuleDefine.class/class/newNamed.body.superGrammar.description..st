instance creation
newNamed: ruleName body: b superGrammar: superGrammar description: ruleDescription

	^ self new
		ruleName: ruleName;
		body: b;
		superGrammar: superGrammar;
		description: ruleDescription;
		yourself