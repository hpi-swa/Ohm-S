interval-assertions
assertParsingExpression: pexpr asSyntactic: syntactic compliesWithItsIntervalFixture: fixtureKey

	^ self assertParsingExpression: pexpr 
			asSyntactic: syntactic
			compliesWithIntervalFixture: fixtureKey 
			fromFixtureSet: (pexpr class expressionName)