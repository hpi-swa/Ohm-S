instance creation
newNamed: ruleName body: b textualRepresentation: source

	^ self new
		ruleName: ruleName;
		body: b;
		textualRepresentation: source;
		yourself