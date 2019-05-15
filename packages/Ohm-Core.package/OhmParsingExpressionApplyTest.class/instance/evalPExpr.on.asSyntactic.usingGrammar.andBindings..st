tests
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar andBindings: bindings

	| rules state grammar parameterizedRule | 

	rules := Dictionary new.
	rules at: #firstRule put: (OhmPExprString newOn: 'firstRule' ).
	parameterizedRule := OhmRuleDefine 
		newNamed: 'parameterRule' 
		parameters: {#x} 
		body: (OhmPExprSeq newOn: {OhmPExprParam newOn: 1 . OhmPExprParam newOn: 1}).
	parameterizedRule installInto: rules.
	grammar := OhmGrammar newWithName: 'FirstGrammar' ruleDictionary: rules.	
		
	state := OhmParsingState new.
	state
		grammar: grammar;
		pushInput: input;
		isSyntactic: isSyntactic;
		pushBindings: bindings;
		shouldRecordFailures: false.
		

	^ pexpr eval: state