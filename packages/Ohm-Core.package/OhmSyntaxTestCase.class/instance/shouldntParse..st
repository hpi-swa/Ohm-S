asserting
shouldntParse: aString

	self should: (grammar match: aString startingFrom: startRule) failed