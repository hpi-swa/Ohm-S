matching-assertions
assertParsingExpression: pexpr asSyntactic: isSyntactic compliesWithFixture: fixtureName fromFixtureSet: fixtureSetName

	| evalResult input |
	((OhmParsingExpressionFixtures fixturesFor: fixtureSetName) 
		at: fixtureName) do: [ :aFixture | 
			input := OhmInputStream on: (aFixture at: #input).
			evalResult := self evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: OhmGrammar new. 
			
			self assertEvalResult: evalResult matchesExpectationFrom: aFixture.
			self assertInput: input matchesExpectationFrom: aFixture. ]