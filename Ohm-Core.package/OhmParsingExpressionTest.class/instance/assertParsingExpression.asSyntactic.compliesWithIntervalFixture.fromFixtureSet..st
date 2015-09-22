interval-assertions
assertParsingExpression: pexpr asSyntactic: isSyntactic compliesWithIntervalFixture: fixtureName fromFixtureSet: fixtureSetName

	| input bindings |
	((OhmParsingExpressionFixtures fixturesFor: fixtureSetName) 
		at: fixtureName) do: [ :aFixture | 
			input := OhmInputStream on: (aFixture at: #input).

			bindings := OrderedCollection new.
			self evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: OhmGrammar new andBindings: bindings.
			
			self 
				assertEvalIntervalResult: bindings 
				matchesExpectationFrom: aFixture. ]