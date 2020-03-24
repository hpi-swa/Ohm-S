fixtures
leftRecursionFailedPreviously

	^ '{ "grammar" : "M {
			ruleOne = Exp
			Exp = U \"cascade\" -- cascade 
			| B -- keyword
			B = U \"bm\"?
			U = UR UM --message 
				| O -- base
			UR = U | O
			O = \"o\"
			UM = \"um\" }", 
		"matchContents" : [
							   { "input" : "o um", "expect" : true },
							   { "input" : "o um bm", "expect" : true },
							   { "input" : "o bm", "expect" : true },
							   { "input" : "o cascade", "expect" : true },
							   { "input" : "o um cascade", "expect" : true } ] }'
        