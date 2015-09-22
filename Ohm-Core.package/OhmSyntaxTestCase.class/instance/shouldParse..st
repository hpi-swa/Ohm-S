as yet unclassified
shouldParse: aString

	self shouldnt: (grammar matchContents: aString startingFrom: startRule) = false