as yet unclassified
testFailedMatchReturnsAFailedMatchResult
	| r |
	r := self fixtureGrammar match: 'bar' startingFrom: #foo.
	self 
		assert: r failed;
		assert: r succeeded not.