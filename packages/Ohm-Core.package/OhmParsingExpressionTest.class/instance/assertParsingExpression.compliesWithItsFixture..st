matching-assertions
assertParsingExpression: pexpr compliesWithItsFixture: fixtureKey

	^ self 
		assertParsingExpression: pexpr 
		compliesWithFixture: fixtureKey 
		fromFixtureSet: (pexpr class expressionName)