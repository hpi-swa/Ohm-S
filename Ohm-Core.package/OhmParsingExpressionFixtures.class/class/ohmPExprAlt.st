as yet unclassified
ohmPExprAlt

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : false },
		                                 { "input" : "a", "expect" : "ok"},
							   { "input" : "b", "expect" : "ok"},
							   { "input" : "ab", "expect" : "ok", "streamAtEnd" : false} ],
		"matchInterval" : [ 	   { "input" : "a", "expectInterval" : [[1,1]] },
							   { "input" : "b", "expectInterval" : [[1,1]] },
							   { "input" : "ab", "expectInterval" : [[1,1]] } ],
		"matchTree" : [ 		   { "input" : "a", "expectedTree" : {"ruleName" : "ruleOne", "children": [{"ruleName" : "_terminal", "children": ["a"]}]} },
							   { "input" : "b", "expectedTree" : {"ruleName" : "ruleOne", "children": [{"ruleName" : "_terminal", "children": ["b"]}]} } ] }'