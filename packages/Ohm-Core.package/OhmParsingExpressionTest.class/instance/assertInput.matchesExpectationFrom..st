matching-assertions
assertInput: input matchesExpectationFrom: aFixture

	| caseDescription streamShouldBeAtEnd |
	caseDescription :=  'For input: ' , input asString.
	
	streamShouldBeAtEnd := aFixture at: #streamAtEnd ifAbsent: [true].
			
	streamShouldBeAtEnd
		ifTrue: [self 
					assert: input atEnd
					description: caseDescription]
		ifFalse: [self 
					assert: input atEnd not
					description: caseDescription]
	