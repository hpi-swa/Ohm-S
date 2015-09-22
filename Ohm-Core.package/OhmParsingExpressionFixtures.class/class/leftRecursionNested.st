as yet unclassified
leftRecursionNested

	^ '{ "grammar" : "M {
				            addExpr = addExprRec | mulExpr
				            addExprRec = addExpr ''+'' mulExpr
				            mulExpr = mulExprRec | priExpr
				            mulExprRec = mulExpr ''*'' priExpr
				            priExpr = /[0-9]/
				            sss = &addExpr addExpr }", 
		"matchContents" : [    { "input" : "1", "expect" : true },
							   { "input" : "2+3", "expect" : true },
							   { "input" : "4+", "expect" : false },
							   { "input" : "5*6", "expect" : true },
							   { "input" : "7*8+9+0", "expect" : true } ] }'
        