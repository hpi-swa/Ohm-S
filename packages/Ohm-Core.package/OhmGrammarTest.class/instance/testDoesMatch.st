testing
testDoesMatch

	self assert: (self fixtureGrammar doesMatch: 'foo' startingFrom: 'foo').
	self deny: (self fixtureGrammar doesMatch: 'foobar' startingFrom: 'foo').