tests
testSuccessfulMatchReturnsAMatchResult
	| r |
	r := self fixtureGrammar match: 'foo' startingFrom: #foo.
	self 
		assert: r succeeded;
		assert: r failed not.