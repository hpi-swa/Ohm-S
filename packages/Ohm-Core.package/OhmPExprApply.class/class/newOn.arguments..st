instance creation
newOn: ruleName arguments: collectionOfSymbols

	collectionOfSymbols ifNil: [0 halt].
	^ (self newOn: ruleName)
		arguments: collectionOfSymbols;
		yourself