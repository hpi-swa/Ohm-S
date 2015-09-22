as yet unclassified
shouldParse: aString to: aStructure

	| result |
	result := grammar matchContents: aString startingFrom: startRule.
	self shouldnt: result = false.
	self should: ((grammar semanticAction: OhmCheckStructure new) check: result for: aStructure).