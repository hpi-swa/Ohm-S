as yet unclassified
ohmPExprAltSeq

	^ '{ "expressionMatch" : [ { "input" : "ab", "expect" : false, "streamAtEnd" : false },
							   { "input" : "12", "expect" : false, "streamAtEnd" : false },
							   { "input" : "", "expect" : false },  
							   { "input" : "abc", "expect" : true },
							   { "input" : "123", "expect" : true } ],
		"syntacticExpressionMatch" : [ 
			 				   { "input" : " ab", "expect" : false, "streamAtEnd" : false },
							   { "input" : " 12", "expect" : false, "streamAtEnd" : false },
							   { "input" : " ", "expect" : false, "streamAtEnd" : false },  
							   { "input" : " abc", "expect" : true },
							   { "input" : " 123", "expect" : true } ] }'
        