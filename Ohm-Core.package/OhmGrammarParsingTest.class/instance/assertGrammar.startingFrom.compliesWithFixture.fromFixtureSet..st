as yet unclassified
assertGrammar: grammar startingFrom: startRule compliesWithFixture: fixtureName fromFixtureSet: fixtureSetName
	
	| parsingResult |
	((OhmParsingExpressionFixtures fixturesFor: fixtureSetName) 
		at: fixtureName) do: [ :aFixture | 
			parsingResult := grammar doesMatch: (aFixture at: #input) startingFrom: startRule.
			self assertGrammarResult: parsingResult matchesExpectationFrom: aFixture]
