private
evalPExpr: pexpr on: input usingGrammar: aGrammar. 

	^ self evalPExpr: pexpr on: input asSyntactic: false usingGrammar: aGrammar