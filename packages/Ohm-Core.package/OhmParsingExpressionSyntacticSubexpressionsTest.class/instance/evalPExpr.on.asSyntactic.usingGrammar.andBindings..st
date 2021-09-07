tests
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar andBindings: bindings
	
	| rules state | 

	rules := Dictionary new.
	rules at: #firstRule put: (OhmPExprString newOn: 'ab').
	rules at: #secondRule put: (OhmPExprString newOn: 'cd').
	rules addAll: additionalRules.

	state := OhmParsingState new.
	state
		grammar: (OhmGrammar newWithName: 'FirstGrammar' ruleDictionary: rules);
		pushInput: input;
		pushBindings: bindings;
		shouldRecordFailures: false;
		isSyntactic: isSyntactic. 

	^ pexpr 
		eval: state.