testing
testLeftRecursionCanBeDealtWith

	self 
		assertGrammar: self fixtureGrammar 
		startingFrom: #tricky
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionTricky.
	