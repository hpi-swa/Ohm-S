fixtures
leftRecursionNestedIndirect

	^ '{ "grammar" : "G {
						addExpr = a | c
						a = b
						b = addExprRec
						addExprRec = addExpr \"+\" mulExpr
						c = d
						d = mulExpr
						mulExpr = e | g
						e = f
						f = mulExprRec
						g = h
						h = priExpr
						mulExprRec = mulExpr \"*\" priExpr
						priExpr = /[0-9]/ }", 
		"matchContents" : [    { "input" : "1", "expect" : true },
							   { "input" : "2+3", "expect" : true },
							   { "input" : "4+", "expect" : false },
							   { "input" : "5*6", "expect" : true },
							   { "input" : "7*8+9+0", "expect" : true } ] }'
        