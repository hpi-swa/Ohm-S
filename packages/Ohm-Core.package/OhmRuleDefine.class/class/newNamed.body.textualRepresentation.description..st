instance creation
newNamed: ruleName body: b textualRepresentation: source description: ruleDescription

	^ self new
		ruleName: ruleName;
		body: b;
		description: ruleDescription;
		textualRepresentation: source;
		yourself