node-assertions
assertParsingExpression: pexpr compliesWithItsNodeFixture: fixtureName

	^ self assertParsingExpression: pexpr compliesWithNodeFixture: fixtureName fromFixtureSet: pexpr class expressionName 