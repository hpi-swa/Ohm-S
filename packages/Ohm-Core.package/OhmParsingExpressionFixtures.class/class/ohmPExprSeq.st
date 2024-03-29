fixtures
ohmPExprSeq
	
	^ '{ 
		"grammar" : "G { ruleOne = \"a\" \"bc\" \"z\" }",
		"expressionMatch" : [ { "input" : "", "expect" : false },
		                                 { "input" : "a", "expect" : false },
				                     { "input" : "aa", "expect" : false },
		                                 { "input" : "ab", "expect" : false },
				                     { "input" : "abb", "expect" : false },
		                                 { "input" : "abc", "expect" : false },
							   { "input" : "abcz", "expect" : true} ],
		"syntacticExpressionMatch" : [ 
			 				   { "input" : " ", "expect" : false },
		                                 { "input" : " a", "expect" : false },
				                     { "input" : " aa", "expect" : false },
		                                 { "input" : " ab", "expect" : false },
				                     { "input" : " abb", "expect" : false },
		                                 { "input" : " abc", "expect" : false },
							   { "input" : " abcz", "expect" : true} ],
		"matchInterval" : [ 	   { "input" : "abcz", "expectInterval" : [[1,1],[2,3],[4,4]]},
							   { "input" : "abcz1", "expectInterval" : [[1,1],[2,3],[4,4]]},
							   { "input" : "abcz ", "expectInterval" : [[1,1],[2,3],[4,4]]} ],
		"matchTree" : [ 	   	   { "input" : "abcz", 
								"expectedTree" : {"ruleName" : "ruleOne", 
													"children" : [ {"ruleName" : "_terminal", "children":["a"]} ,
																 {"ruleName" : "_terminal", "children":["bc"]},
																 {"ruleName" : "_terminal", "children":["z"]} ] } } ] }'
        