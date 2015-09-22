interval-assertions
assertEvalIntervalResult: bindings matchesExpectationFrom: aFixture

	| expectedValue interval |
	expectedValue := aFixture at: #expectInterval.
	expectedValue isNil 
		ifTrue: [ self assert: bindings isEmpty 
					description: 'For input: ' , (aFixture at: #input) asString. ]
		ifFalse: [ self assert: expectedValue size equals: bindings size.
				bindings doWithIndex: [ :node :index |
					interval := node interval.
					self assert: ((expectedValue at: index) at: 1)
						equals: interval start
						description: 'For input: ' , (aFixture at: #input) asString.
					self assert: ((expectedValue at: index) at: 2)
						equals: interval end
						description: 'For input: ' , (aFixture at: #input) asString.] ].