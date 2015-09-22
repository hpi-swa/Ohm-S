instance creation
newNamed: ruleName body: b textualRepresentation: source superGrammar: superGrammar description: ruleDescription

	^ self new
		ruleName: ruleName;
		body: b;
		superGrammar: superGrammar;
		description: ruleDescription;
		textualRepresentation: source;
		yourself