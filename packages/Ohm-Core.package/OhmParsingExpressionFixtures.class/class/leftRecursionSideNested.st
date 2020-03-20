fixtures
leftRecursionSideNested

	^ '{ "grammar" : "M {
	  		ruleOne = addExpr          
			addExpr = wrappedAddExpr | primaExpr
			wrappedAddExpr = \">>\" addExpr \">>\" 
			primaExpr = primaExprRec | priExpr
			primaExprRec = primaExpr \"-\"
	            priExpr = /[0-9]/ }", 
		"matchContents" : [
							   { "input" : "2+3", "expect" : true },
							   { "input" : ">>2+3>>+4", "expect" : true },
							   { "input" : ">>2--+3>>+4---", "expect" : true },
							   { "input" : "4+", "expect" : false },
							   { "input" : "5+6", "expect" : true },
							   { "input" : "5-+6--", "expect" : true },
							   { "input" : "7+8+9+0", "expect" : true } ] }'
        