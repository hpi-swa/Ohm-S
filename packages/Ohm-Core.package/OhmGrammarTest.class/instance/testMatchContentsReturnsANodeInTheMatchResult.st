testing
testMatchContentsReturnsANodeInTheMatchResult

	| result |
	result := (self fixtureGrammar match: 'foo' startingFrom: #foo) cst.
	self assert: 1 equals: result interval start.
	self assert: 3 equals: result interval end.