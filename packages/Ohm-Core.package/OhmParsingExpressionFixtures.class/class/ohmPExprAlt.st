fixtures
ohmPExprAlt

	^ '{ "grammar": "G { ruleOne = \"a\" | \"b\"}",
	      "expressionMatch" : [ { "input" : "", "expect" : false },
		                                 { "input" : "a", "expect" : true},
							   { "input" : "b", "expect" : true},
							   { "input" : "ab", "expect" : true, "streamAtEnd" : false} ],
		"matchInterval" : [ 	   { "input" : "a", "expectInterval" : [[1,1]] },
							   { "input" : "b", "expectInterval" : [[1,1]] },
							   { "input" : "ab", "expectInterval" : [[1,1]] } ],
		"matchTree" : [ 		   { "input" : "a", "expectedTree" : {"ruleName" : "ruleOne", "children": [{"ruleName" : "_terminal", "children": ["a"]}]} },
							   { "input" : "b", "expectedTree" : {"ruleName" : "ruleOne", "children": [{"ruleName" : "_terminal", "children": ["b"]}]} } ] }'