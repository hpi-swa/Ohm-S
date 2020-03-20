fixtures
ohmPExprRange

	^ '{ 
           "grammar" : "M { foo = \"0\"..\"9\" }",
		"expressionMatch" : 
		[	{ "input" : "0", "expect" : "ok" },
			{ "input" : "92", "expect" : "ok", "streamAtEnd" : false},
			{ "input" : "x2", "expect" : false, "streamAtEnd" : false } ],
		"matchInterval" :
		[ 	{"input" : "01", "expectInterval" : [[1,1]] },
			{"input" : "909", "expectInterval" : [[1,1]] } ] }'
        