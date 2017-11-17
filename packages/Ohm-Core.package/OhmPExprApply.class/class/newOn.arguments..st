instance creation
newOn: ruleName arguments: collectionOfSymbols

	^ (self newOn: ruleName)
		arguments: collectionOfSymbols;
		yourself