matching-assertions
assertParsingExpression: pexpr compliesWithFixture: fixtureName fromFixtureSet: fixtureSetName

	self
		assertParsingExpression: pexpr
		asSyntactic: false
		compliesWithFixture: fixtureName
		fromFixtureSet: fixtureSetName