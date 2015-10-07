node-assertions
assertParsingExpression: pexpr compliesWithNodeFixture: fixtureName fromFixtureSet: fixtureSetName

	| grammar result |
	grammar := OhmGrammar newWithName: 'testGrammar' ruleDictionary: (Dictionary newFrom: { #ruleOne => pexpr }).
	((OhmParsingExpressionFixtures fixturesFor: fixtureSetName) 
		at: fixtureName) do: [ :aFixture |
			result := (grammar match: (aFixture at: #input) startingFrom: #ruleOne) cst.
			self assertNodeTreeOf: result equals: (aFixture at: #expectedTree).].

	