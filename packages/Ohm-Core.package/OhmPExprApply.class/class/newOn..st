instance creation
newOn: ruleName

	^ (self new)
		ruleName: ruleName asSymbol;
		arguments: #();
		yourself