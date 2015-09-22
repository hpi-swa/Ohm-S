as yet unclassified
ohmPExprPlus

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : false },
		                                 { "input" : "a", "expect" : true },
		                                 { "input" : "ba", "expect" : false, "streamAtEnd" : false},
		                                 { "input" : "aa", "expect" : true},
		                                 { "input" : "aaa", "expect" : true},		
		                                 { "input" : "b", "expect" : false, "streamAtEnd" : false},
							   { "input" : "ab", "expect" : true, "streamAtEnd" : false} ],
		"syntacticExpressionMatch" : [ 
			 				   { "input" : " ", "expect" : false },
		                                 { "input" : " a", "expect" : true },
		                                 { "input" : " ba", "expect" : false, "streamAtEnd" : false},
		                                 { "input" : " aa", "expect" : true},
		                                 { "input" : " aaa", "expect" : true},		
		                                 { "input" : " b", "expect" : false, "streamAtEnd" : false},
							   { "input" : " ab", "expect" : true, "streamAtEnd" : false} ],
		"matchInterval" : [	   { "input" : "", "expectInterval" : [] },
		                                 { "input" : "a", "expectInterval" : [] },
		                                 { "input" : "ba", "expectInterval" : [] },
		                                 { "input" : "ab", "expectInterval" : [[1,2],[1,2]]},
		                                 { "input" : "abab", "expectInterval" : [[1,4],[1,4]]},		
		                                 { "input" : "ababab", "expectInterval" : [[1,6],[1,6]] } ],
		"matchTree" : [	   	   { "input" : "ab",
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [ 
									{"ruleName" : "_list", "children" : [ { "ruleName" : "_terminal", "children" : null } ] } , 
									{"ruleName" : "_list", "children" : [ { "ruleName" : "_terminal", "children" : null } ] } ] 
								} 
							   },
		                                 { "input" : "abab", 
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [ 
									{"ruleName" : "_list", "children" : [ { "ruleName" : "_terminal", "children" : null }, 
																		{ "ruleName" : "_terminal", "children" : null } ] } , 
									{"ruleName" : "_list", "children" : [ { "ruleName" : "_terminal", "children" : null }, 
																		{ "ruleName" : "_terminal", "children" : null } ] } ] 
								} 
							   },
		                                 { "input" : "ababab", 
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [ 
									{"ruleName" : "_list", "children" : [ { "ruleName" : "_terminal", "children" : null },
																		{ "ruleName" : "_terminal", "children" : null },
																		{ "ruleName" : "_terminal", "children" : null } ] } , 
									{"ruleName" : "_list", "children" : [ { "ruleName" : "_terminal", "children" : null },
																		{ "ruleName" : "_terminal", "children" : null },
																		{ "ruleName" : "_terminal", "children" : null } ] } ] 
								} 
							   } 
						]  }'
        