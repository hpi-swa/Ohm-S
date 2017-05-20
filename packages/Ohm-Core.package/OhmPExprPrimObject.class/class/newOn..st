instance creation
newOn: numberOrSymbol

	^ (self new)
		primitiveObject: numberOrSymbol;
		yourself