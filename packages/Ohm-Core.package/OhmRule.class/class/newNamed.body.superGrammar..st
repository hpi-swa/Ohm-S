instance creation
newNamed: ruleName body: b superGrammar: superGrammar

	^ self new
		ruleName: ruleName;
		body: b;
		superGrammar: superGrammar;
		yourself