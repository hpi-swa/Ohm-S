fixtures
starSyntacticWithApply

	^ '{ 
		"grammar" : "G {
						RuleOne = identifier*
						identifier = \"a\"+ }",
		"matchContents" : [ 
							   { "input" : " ", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : " a", "expect" : true },
		                                 { "input" : " aa", "expect" : true, "streamAtEnd" : false},
		                                 { "input" : " a ", "expect" : true},
		                                 { "input" : " aaa", "expect" : true},		
		                                 { "input" : " aa a", "expect" : true}] }'
        