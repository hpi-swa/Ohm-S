fixtures
ohmPExprStarSyntactic

	"This test can be misleading as the grammar involves a syntactic rule
	which takes care of the first test case, but when only using the
	pexpr as done by the corresponding test method, the stream will not
	be at its end."

	^ '{ 
		"grammar" : "G {
						RuleOne = \"a\"* }",
		"matchContents" : [ 
							   { "input" : " ", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : " a", "expect" : true },
		                                 { "input" : " ba", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : " aa", "expect" : true},
		                                 { "input" : " aaa", "expect" : true},		
		                                 { "input" : " b", "expect" : true, "streamAtEnd" : false},
		 					   { "input" : " ab", "expect" : true, "streamAtEnd" : false } ] }'
        