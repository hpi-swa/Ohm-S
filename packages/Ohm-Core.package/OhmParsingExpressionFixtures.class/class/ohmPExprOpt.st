fixtures
ohmPExprOpt

	^ '{ 
		"grammar" : "G {
						ruleOne = \"dr\"? }",
		"expressionMatch" : [ { "input" : "", "expect" : true },
							   { "input" : "dr", "expect" : true },
							   { "input" : "d", "expect" : true, "streamAtEnd" : false } ],
		"matchInterval" : [ 	   { "input" : "", "expectInterval" : [[0,0]] },
							   { "input" : "dr", "expectInterval" : [[1,2]] },
							   { "input" : "d", "expectInterval" : [[0,0]] } ],
		"matchTree" : [ 	   	   { "input" : "", 
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [{"ruleName" : "_terminal", "children" : [null] }] } },
							   { "input" : "dr", 
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [{"ruleName" : "_terminal", "children" : ["dr"] }] } } ],
		"matchEmptyComplexTree" : [
							   { "input" : "", 
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [{"ruleName" : "_terminal", "children" : [null] }, {"ruleName" : "_terminal", "children" : [null] }] } },
							   { "input" : "dr", 
								"expectedTree" : {"ruleName" : "ruleOne", "children" : [{"ruleName" : "_terminal", "children" : [null] }, {"ruleName" : "_terminal", "children" : [null] }] } } ]  }'.
        