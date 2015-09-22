instance creation
newNamed: ruleName body: b

	^ self new
		ruleName: ruleName;
		body: b;
		yourself