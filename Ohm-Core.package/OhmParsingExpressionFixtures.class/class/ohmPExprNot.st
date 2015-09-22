as yet unclassified
ohmPExprNot

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : true },
							   { "input" : "hello world", "expect" : false, "streamAtEnd" : false },
							   { "input" : "yello world", "expect" : true, "streamAtEnd" : false },
							   { "input" : "yello", "expect" : true, "streamAtEnd" : false },
							   { "input" : "hello", "expect" : false, "streamAtEnd" : false } ],
		"matchInterval" : [ 	   { "input" : "", "expectInterval" : null },
							   { "input" : "yello world", "expectInterval" : null },
							   { "input" : "hello world", "expectInterval" : null },
							   { "input" : "yello", "expectInterval" : null } ],
		"matchTree" : [ 	   	   { "input" : "bar", "expectedTree" : {"ruleName" : "ruleOne", "children" : [{"ruleName" : "_terminal", "children" : ["bar"]}] } }] }'
        