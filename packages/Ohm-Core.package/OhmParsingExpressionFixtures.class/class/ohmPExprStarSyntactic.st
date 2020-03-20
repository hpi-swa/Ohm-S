fixtures
ohmPExprStarSyntactic

	^ '{ 
		"grammar" : "G {
						RuleOne = \"a\"* }",
		"matchContents" : [ 
							   { "input" : " ", "expect" : true },
		                                 { "input" : " a", "expect" : true },
		                                 { "input" : " ba", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : " aa", "expect" : true},
		                                 { "input" : " aaa", "expect" : true},		
		                                 { "input" : " b", "expect" : true, "streamAtEnd" : false},
		 					   { "input" : " ab", "expect" : true, "streamAtEnd" : false } ] }'
        