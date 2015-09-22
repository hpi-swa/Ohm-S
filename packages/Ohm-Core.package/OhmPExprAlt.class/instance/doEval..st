accessing
doEval: state

	"TODO: syntactic tests"

	| originalInputState index backtrackingInputState input |
	
	input := state inputStream.
	originalInputState := input getState.
	
	backtrackingInputState := input getState.
	index := self terms findFirst: [:term |
		input setState: backtrackingInputState.
		term eval: state ].

	index = 0
		ifTrue:  [ input setState: originalInputState. 
				^ false ]
		ifFalse: [ ^ true ]