private
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar

	| state |

	state := OhmParsingState new.
	state 
		grammar: aGrammar;
		isSyntactic: isSyntactic;
		shouldRecordFailures: false;
		pushBindings: OrderedCollection new;
		pushInput: input.       

	^ pexpr eval: state