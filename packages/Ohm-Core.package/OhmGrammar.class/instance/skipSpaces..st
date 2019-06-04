matching
skipSpaces: state

	| result originalPosition anInput originalFailures |
	anInput := state inputStream.
	originalPosition := anInput getState.
	state isSyntactic: false.
	originalFailures := state rightmostFailure.
	state rightmostFailure: OhmFailureDescriptor new.

	[ originalPosition := anInput getState.
	  state pushBindings: OrderedCollection new.
	  result := state cachedSpacesRule eval: state.
	  state popBindings.
	  result.
	 ] whileTrue.

	state rightmostFailure: originalFailures.
	state isSyntactic: true.
	anInput setState: originalPosition.