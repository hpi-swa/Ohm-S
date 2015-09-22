interval-assertions
assertParsingExpression: pexpr compliesWithItsIntervalFixture: fixtureKey

	^ self assertParsingExpression: pexpr 
			compliesWithIntervalFixture: fixtureKey 
			fromFixtureSet: (pexpr class expressionName)