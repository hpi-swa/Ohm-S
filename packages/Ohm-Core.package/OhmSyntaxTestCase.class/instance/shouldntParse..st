as yet unclassified
shouldntParse: aString

	self should: (grammar matchContents: aString startingFrom: startRule) = false