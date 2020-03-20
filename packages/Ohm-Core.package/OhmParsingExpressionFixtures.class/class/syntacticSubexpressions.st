fixtures
syntacticSubexpressions

	^ '{ "syntacticExpressionMatch" : [ 
							   { "input" : "abcd", "expect" : true },
							   { "input" : "ab cd", "expect" : true },
							   { "input" : "ab  cd", "expect" : true },
							   { "input" : " abcd", "expect" : true },
							   { "input" : " abcd ", "expect" : true, "streamAtEnd" : false } ] }'
        