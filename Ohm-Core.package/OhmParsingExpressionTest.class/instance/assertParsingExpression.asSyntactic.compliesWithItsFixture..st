matching-assertions
assertParsingExpression: pexpr asSyntactic: isSyntactic compliesWithItsFixture: fixtureKey

	^ self 
		assertParsingExpression: 
		pexpr asSyntactic: isSyntactic 
		compliesWithFixture: fixtureKey 
		fromFixtureSet: pexpr class expressionName