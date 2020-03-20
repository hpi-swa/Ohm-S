fixtures
ohmPExprStar

	^ '{ 
		"grammar" : "G {
						ruleOne = (\"a\" \"b\")* }",
		"matchContents" : [ { "input" : "", "expect" : true },
		                                 { "input" : "ab", "expect" : true },
		                                 { "input" : "ba", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : "abab", "expect" : true},
		                                 { "input" : "aaa", "expect" : true, "streamAtEnd" : false},		
		                                 { "input" : "b", "expect" : true, "streamAtEnd" : false},
		 					   { "input" : "ab", "expect" : true} ],
		"matchInterval" : [	   { "input" : "", "expectInterval" : [[0,0],[0,0]] },
		                                 { "input" : "a", "expectInterval" : [[0,0],[0,0]] },
		                                 { "input" : "ba", "expectInterval" : [[0,0],[0,0]] },
		                                 { "input" : "ab", "expectInterval" : [[1,2],[1,2]]},
		                                 { "input" : "abab", "expectInterval" : [[1,4],[1,4]]},		
		                                 { "input" : "ababab", "expectInterval" : [[1,6],[1,6]] } ] }'
        