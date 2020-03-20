asserting
assertGrammarResult: grammarResult matchesExpectationFrom: aFixture

	| expectedValue |
	expectedValue := aFixture at: #expect.
	expectedValue 
		ifTrue: [ self assert: grammarResult ]
		ifFalse: [ self assert: expectedValue 
					  equals: grammarResult 
					  description: 'For input: ' , (aFixture at: #input) asString. ].