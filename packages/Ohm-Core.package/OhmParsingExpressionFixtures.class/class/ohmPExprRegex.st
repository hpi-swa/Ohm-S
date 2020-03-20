fixtures
ohmPExprRegex

	^ '{ 
		"grammar" : "M { ruleOne = /[0-9]/ }",
		"matchContents" : [ { "input" : "[0-9]", "expect" : false, "streamAtEnd" : false },
		                                 { "input" : "4", "expect" : true},
							   { "input" : "a", "expect" : false},
							   { "input" : "4b", "expect" : true, "streamAtEnd" : false},
      						   { "input" : "43", "expect" : true, "streamAtEnd" : false} ],
		"matchInterval" : [      { "input" : "4", "expectInterval" : [[1,1]] },
							   { "input" : "4b", "expectInterval" : [[1,1]]},
      						   { "input" : "43", "expectInterval" : [[1,1]]} ],
		"matchTree" : [      	   { "input" : "4", 
								"expectedTree" : { "ruleName" : "ruleOne", "children" :  [ { "ruleName" : "_terminal", "children" : ["4"] } ] } }  ] 
		}'
        