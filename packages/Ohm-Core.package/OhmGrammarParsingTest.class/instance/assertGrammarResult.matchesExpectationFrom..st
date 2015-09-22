as yet unclassified
assertGrammarResult: grammarResult matchesExpectationFrom: aFixture

	| expectedValue |
	expectedValue := aFixture at: #expect.
	expectedValue = 'ok'
		ifTrue: [ self assert: grammarResult ]
		ifFalse: [ self assert: expectedValue 
					  equals: grammarResult 
					  description: 'For input: ' , (aFixture at: #input) asString. ].