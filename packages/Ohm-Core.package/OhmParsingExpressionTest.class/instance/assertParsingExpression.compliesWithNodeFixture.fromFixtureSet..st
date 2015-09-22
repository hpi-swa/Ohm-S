node-assertions
assertParsingExpression: pexpr compliesWithNodeFixture: fixtureName fromFixtureSet: fixtureSetName

	| grammar result |
	grammar := OhmGrammar newWithName: 'testGrammar' ruleDictionary: (Dictionary newFrom: { #ruleOne => pexpr }).
	((OhmParsingExpressionFixtures fixturesFor: fixtureSetName) 
		at: fixtureName) do: [ :aFixture |
			result := grammar matchContents: (aFixture at: #input) startingFrom: #ruleOne.
			self assertNodeTreeOf: result equals: (aFixture at: #expectedTree).].

	