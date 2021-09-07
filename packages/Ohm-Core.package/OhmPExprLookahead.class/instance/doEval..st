accessing
doEval: state
	
	| originalInputState result input |
	input := state inputStream.
	originalInputState := input getState.
	
	result := self term eval: state.

	input setState: originalInputState.

	^ result
	