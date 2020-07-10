running
testSkippedSpacesNormalCase

	| result |
	result := (grammar match: 'a  b	c' startingFrom: #StartRule) cst.
	self assert: String tab equals: result children last skippedSpacesString.
	self assert: '  ' equals: result children second skippedSpacesString.