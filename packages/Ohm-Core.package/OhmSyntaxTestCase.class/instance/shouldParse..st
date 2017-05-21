asserting
shouldParse: aString
	
	| result |
	result := self parseAndStoreResult: aString ifSuccessful: false.

	self should: result succeeded