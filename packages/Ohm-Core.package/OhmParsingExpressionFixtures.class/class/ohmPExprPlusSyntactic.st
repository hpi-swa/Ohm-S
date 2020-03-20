fixtures
ohmPExprPlusSyntactic

	^ '{ 
		"grammar" : "G {
						RuleOne = (\"a\" \"b\")+ }",
		"matchContents" : [ 
			 				   { "input" : " ", "expect" : false },
		                                 { "input" : " ab", "expect" : true },
		                                 { "input" : " ba", "expect" : false, "streamAtEnd" : false},
		                                 { "input" : " abab", "expect" : true},
		                                 { "input" : " aaa", "expect" : false, "streamAtEnd" : false},		
		                                 { "input" : " b", "expect" : false, "streamAtEnd" : false},
							   { "input" : " abc", "expect" : true, "streamAtEnd" : false} ]
		}'
        