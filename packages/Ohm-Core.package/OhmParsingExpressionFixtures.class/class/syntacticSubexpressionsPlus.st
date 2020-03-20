fixtures
syntacticSubexpressionsPlus

	^ '{ "syntacticExpressionMatch" : [ 
							   { "input" : "abab", "expect" : true },
							   { "input" : "ab ab", "expect" : true },
							   { "input" : "ab  ab ab", "expect" : true },
							   { "input" : " ab", "expect" : true },
							   { "input" : " ab ab ", "expect" : true, "streamAtEnd" : false } ] }'
        