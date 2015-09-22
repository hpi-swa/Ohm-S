accessing
doEval: state

	| result originalPosition originalFailures |
	
	originalPosition := state inputStream getState.
	originalFailures := state rightmostFailure.
	state rightmostFailure: OhmFailureDescriptor new.
	result := super doEval: state.
	state rightmostFailure: originalFailures.

	result 
		ifTrue: [ state recordFailureOf: self at: originalPosition.
				state bindings removeLast ].
	
	^ result not