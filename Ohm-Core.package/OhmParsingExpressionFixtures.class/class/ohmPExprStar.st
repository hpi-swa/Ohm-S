as yet unclassified
ohmPExprStar

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : true },
		                                 { "input" : "a", "expect" : true },
		                                 { "input" : "ba", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : "aa", "expect" : true},
		                                 { "input" : "aaa", "expect" : true},		
		                                 { "input" : "b", "expect" : true, "streamAtEnd" : false},
		 					   { "input" : "ab", "expect" : true, "streamAtEnd" : false } ],
		"syntacticExpressionMatch" : [ 
							   { "input" : " ", "expect" : true },
		                                 { "input" : " a", "expect" : true },
		                                 { "input" : " ba", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : " aa", "expect" : true},
		                                 { "input" : " aaa", "expect" : true},		
		                                 { "input" : " b", "expect" : true, "streamAtEnd" : false},
		 					   { "input" : " ab", "expect" : true, "streamAtEnd" : false } ],
		"matchInterval" : [	   { "input" : "", "expectInterval" : [[0,0],[0,0]] },
		                                 { "input" : "a", "expectInterval" : [[0,0],[0,0]] },
		                                 { "input" : "ba", "expectInterval" : [[0,0],[0,0]] },
		                                 { "input" : "ab", "expectInterval" : [[1,2],[1,2]]},
		                                 { "input" : "abab", "expectInterval" : [[1,4],[1,4]]},		
		                                 { "input" : "ababab", "expectInterval" : [[1,6],[1,6]] } ] }'
        