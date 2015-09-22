evaluation
doEval: state

	state recordFailureOf: self at: state inputStream getState.
	^ false
	