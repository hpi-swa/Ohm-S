as yet unclassified
ohmPExprLookahead

	^ '{ "expressionMatch" : [ { "input" : "", "expect" : false },
							   { "input" : "hello world", "expect" : true, "streamAtEnd" : false },
							   { "input" : "yello world", "expect" : false, "streamAtEnd" : false },
							   { "input" : "yello", "expect" : false, "streamAtEnd" : false },
							   { "input" : "hello", "expect" : true, "streamAtEnd" : false } ],
		"matchTree" : [ 		   { "input" : "hello", "expectedTree" : { "ruleName" : "ruleOne", "children" : [{"ruleName": "_terminal", "children":["hello"]}, {"ruleName": "_terminal", "children":["hello"]}] }} ] }'
        