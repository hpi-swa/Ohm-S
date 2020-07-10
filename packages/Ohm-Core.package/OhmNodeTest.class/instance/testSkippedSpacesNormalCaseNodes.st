running
testSkippedSpacesNormalCaseNodes

	| result |
	result := (grammar match: 'a  b	c' startingFrom: #StartRule) cst.
	self assert: 1 equals: result children last skippedSpacesNodes children first children size.
	self assert: 2 equals: result children second skippedSpacesNodes children first children size.