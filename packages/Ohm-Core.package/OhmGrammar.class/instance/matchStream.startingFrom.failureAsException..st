matching
matchStream: stream startingFrom: startRuleName failureAsException: exceptionOnFailure
	
	| result bindings state |
	bindings := OrderedCollection new.
	state := OhmParsingState new.
	state
		grammar: self;
		pushInput: stream;
		pushBindings: bindings.
	
	result := (OhmPExprApply newOn: startRuleName) eval: state.
	result = false
		ifFalse: [ self skipSpaces: state.
				 result := OhmPExprEnd new eval: state. ].
	
	^ OhmMatchResult newFor: state withResult: result startingFrom: startRuleName