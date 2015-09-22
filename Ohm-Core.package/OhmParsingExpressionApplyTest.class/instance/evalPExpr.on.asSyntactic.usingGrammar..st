as yet unclassified
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar

	| rules state | 

	rules := Dictionary new.
	rules at: #firstRule put: (OhmPExprString newOn: 'firstRule' ).
	state := OhmParsingState new.
	state
		grammar: (OhmGrammar newWithName: 'FirstGrammar' ruleDictionary: rules);
		pushInput: input;
		isSyntactic: isSyntactic;
		pushBindings: OrderedCollection new;
		shouldRecordFailures: false.        

	^ pexpr eval: state