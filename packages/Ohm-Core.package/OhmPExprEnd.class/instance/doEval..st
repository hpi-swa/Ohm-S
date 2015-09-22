accessing
doEval: state
	
	self syntacticRuleHandling: state.  

	state inputStream atEnd
		ifFalse: [ state recordFailureOf: self at: state inputStream getState.
				^ false ].
	
	state addNodeNamed: self class terminalRuleIdentifier 
									startedAt: state inputStream getState 
									withChildren:  { nil }.

	^ true