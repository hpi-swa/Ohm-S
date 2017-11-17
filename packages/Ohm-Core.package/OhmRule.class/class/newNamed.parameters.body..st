instance creation
newNamed: ruleName parameters: parameters body: b

	^ self new
		ruleName: ruleName;
		parameters: parameters;
		body: b;
		yourself