fixtures
ohmPExprApply

	^ '{ 
		"grammar" : "G {
						ruleOne = firstRule
						firstRule = \"firstRule\" }",
		"matchContents" : [ { "input" : "", "expect" : false },
							   { "input" : "firstRule", "expect" : true },
							   { "input" : "firstRule secondRule", "expect" : true, "streamAtEnd" : false } ],
		"parameterizedExpressionMatch" :	[
							   {"input": "", "expect": false},
							   {"input": "firstRule", "expect": false},
							   {"input": "firstRulefirstRule", "expect": true},
							   {"input": "firstRule secondRule", "expect": false , "streamAtEnd" : false}],
		"matchInterval" : 	 [ { "input" : "firstRule", "expectInterval" : [[1,9]] },
							   { "input" : "firstRule secondRule", "expectInterval" : [[1,9]] } ] }'
        