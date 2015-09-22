accessing
doEval: state

	"TODO: syntactic handling"
	"TODO: syntactic tests"

	| originalInputState result input |
	input := state inputStream.
	originalInputState := input getState.
	
	result := self term eval: state.

	result
		ifFalse: [ input setState: originalInputState.
				state 
					addNodeNamed: self class terminalRuleIdentifier
					startedAt: originalInputState 
					withChildren: { nil }. ].

	^ true
	