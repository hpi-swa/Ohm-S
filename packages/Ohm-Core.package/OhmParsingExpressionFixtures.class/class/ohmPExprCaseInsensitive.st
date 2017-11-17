as yet unclassified
ohmPExprCaseInsensitive

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : false },
							   { "input" : "abc", "expect" : true },
							   { "input" : "ABC", "expect" : true },
							   { "input" : "Abcc", "expect" : true, "streamAtEnd" : false } ],
		"matchInterval" : 	 [ { "input" : "abc", "expectInterval" : [[1,3]] },
							   { "input" : "abcc", "expectInterval" : [[1,3]] } ] }'
        