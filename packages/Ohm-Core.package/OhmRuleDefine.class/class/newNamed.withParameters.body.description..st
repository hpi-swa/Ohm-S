instance creation
newNamed: ruleName withParameters: parameters body: b description: ruleDescription

	^ self new
		ruleName: ruleName;
		parameters: parameters;
		body: b;
		description: ruleDescription;
		yourself