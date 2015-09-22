accessing
doEval: state

	"TODO: syntactic handling"
	"TODO: syntactic tests"

	| originalInputState result input |
	input := state inputStream.
	originalInputState := input getState.
	
	result := self term eval: state.

	input setState: originalInputState.

	^ result
	