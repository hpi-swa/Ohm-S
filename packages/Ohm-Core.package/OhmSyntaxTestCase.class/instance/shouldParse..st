asserting
shouldParse: aString
	
	| result |
	result := self parseAndStoreResult: aString ifSuccessful: false.

	result succeeded ifFalse: [self signalFailure: ('Parse of: {1} failed' format: {aString})]