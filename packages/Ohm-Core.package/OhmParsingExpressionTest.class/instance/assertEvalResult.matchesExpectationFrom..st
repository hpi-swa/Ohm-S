matching-assertions
assertEvalResult: evalResult matchesExpectationFrom: aFixture

	| expectedValue |
	expectedValue := aFixture at: #expect.
	self 
		assert: expectedValue 
		equals: evalResult
		description: 'For input: ' , (aFixture at: #input) asString.