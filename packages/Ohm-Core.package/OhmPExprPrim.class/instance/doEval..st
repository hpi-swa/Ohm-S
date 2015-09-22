evaluation
doEval: state

	"TODO: syntactic handling"
	"TODO: syntactic tests"

	| matchResult start |

	start := state inputStream getState.
	
	matchResult := self matchInput: state inputStream.
	matchResult == #ohmFail
		ifTrue: [ state recordFailureOf: self at: start.
				^ false ].
	
	state addNodeNamed: self class terminalRuleIdentifier 
			startedAt: start 
			withChildren: { matchResult }.

	^ true