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
	
	result
		ifTrue: [ | setParents | 
				setParents := self semanticAction: OhmSetParentAttribute new.
				setParents value: bindings first.
				^ bindings first ]
		ifFalse: [ exceptionOnFailure ifTrue: [ OhmMatchFailure signalFor: state startedFrom: startRuleName ].
				^ false ]