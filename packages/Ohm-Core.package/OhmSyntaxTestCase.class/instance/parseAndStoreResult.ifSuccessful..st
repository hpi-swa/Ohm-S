asserting
parseAndStoreResult: aString ifSuccessful: storeOnSuccess
	
	| result |
	[ result :=  grammar match: aString startingFrom: startRule]
		on: OhmMatchFailure
		do: [:failure | result := failure].

	self class storeSyntaxTestResult: result for: testSelector.
	^ result