interval-assertions
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar andBindings: bindings

	| state |

	state := OhmParsingState new.
	state 
		grammar: 
			(OhmGrammar newWithName: 'FirstGrammar' 								ruleDictionary: Dictionary new);
		isSyntactic: isSyntactic;
		shouldRecordFailures: false;
		pushBindings: bindings;
		pushInput: input. 

	^ pexpr eval: state