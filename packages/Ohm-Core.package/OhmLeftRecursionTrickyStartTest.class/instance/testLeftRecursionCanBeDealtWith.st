tests
testLeftRecursionCanBeDealtWith

	self fixtureGrammar match: 'foobar + foo' startingFrom: #expr.
	