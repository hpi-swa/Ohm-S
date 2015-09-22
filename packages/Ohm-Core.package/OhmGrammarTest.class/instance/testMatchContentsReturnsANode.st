as yet unclassified
testMatchContentsReturnsANode

	| result |
	result := self fixtureGrammar matchContents: 'foo' startingFrom: #foo.
	self deny: result = #ohmFail.
	self assert: 1 equals: result interval start.
	self assert: 3 equals: result interval end.