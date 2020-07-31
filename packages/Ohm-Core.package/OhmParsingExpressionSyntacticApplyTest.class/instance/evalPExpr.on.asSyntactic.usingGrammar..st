tests
evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar

	^ self evalPExpr: pexpr on: input asSyntactic: isSyntactic usingGrammar: aGrammar andBindings: OrderedCollection new