testing
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar

	| rules state | 

	rules := Dictionary new.
	rules at: #firstRule put: (OhmPExprString newOn: 'ab' ).
	rules at: #secondRule put: (OhmPExprString newOn: 'cd' ).

	state := OhmParsingState new.
	state
		grammar: (OhmGrammar newWithName: 'FirstGrammar' ruleDictionary: rules);
		pushInput: input;
		pushBindings: OrderedCollection new;
		shouldRecordFailures: false;
		isSyntactic: isSyntactic. 

	^ pexpr 
		eval: state.