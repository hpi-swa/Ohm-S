instance creation
newNamed: ruleName body: b textualRepresentation: source superGrammar: superGrammar

	^ self new
		ruleName: ruleName;
		body: b;
		superGrammar: superGrammar;
		textualRepresentation: source;
		yourself