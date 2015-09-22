interval-assertions
assertParsingExpression: pexpr compliesWithIntervalFixture: fixtureName fromFixtureSet: fixtureSetName

	self
		assertParsingExpression: pexpr
		asSyntactic: false
		compliesWithIntervalFixture: fixtureName
		fromFixtureSet: fixtureSetName