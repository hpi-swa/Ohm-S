as yet unclassified
ohmPExprApply

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : false },
							   { "input" : "firstRule", "expect" : true },
							   { "input" : "firstRule secondRule", "expect" : true, "streamAtEnd" : false } ],
		"matchInterval" : 	 [ { "input" : "firstRule", "expectInterval" : [[1,9]] },
							   { "input" : "firstRule secondRule", "expectInterval" : [[1,9]] } ] }'
        