asserting
shouldntParse: aString
	
	| result |
	result := self parseAndStoreResult: aString ifSuccessful: true.

	self should: result failed