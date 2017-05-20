asserting
shouldParse: aString to: aStructure

	| result |
	result := grammar match: aString startingFrom: startRule.
	self should: result succeeded.
	self should: ((grammar semanticAction: OhmCheckStructure new) check: result for: aStructure).