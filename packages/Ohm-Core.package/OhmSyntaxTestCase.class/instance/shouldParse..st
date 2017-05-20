asserting
shouldParse: aString

	self should: (grammar match: aString startingFrom: startRule) succeeded