tests
testMatchResultCreatesFailureOnFailedState

	| r |
	r := OhmMatchResult newFor: self failedState.
	self assert: r failed.