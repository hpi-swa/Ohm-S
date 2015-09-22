instance creation
newNamed: ruleName body: b description: ruleDescription

	^ self new
		ruleName: ruleName;
		body: b;
		description: ruleDescription;
		yourself