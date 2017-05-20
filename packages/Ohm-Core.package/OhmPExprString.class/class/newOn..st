instance creation
newOn: aString

	^ (self new)
		matchString: aString;
		yourself