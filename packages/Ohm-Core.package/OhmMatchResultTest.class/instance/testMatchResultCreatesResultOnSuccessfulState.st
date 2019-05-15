tests
testMatchResultCreatesResultOnSuccessfulState

	| r |
	r := OhmMatchResult newFor: self successfulState.
	self assert: r succeeded.