fixtures
ohmPExprEnd

	^ '{ 
		"grammar" : "G {
						ruleOne = \"foo\" end}",
		"matchContents" : [ { "input" : "bar", "expect" : false, "streamAtEnd" : false},
							   { "input" : "foo", "expect" : true, "streamAtEnd" : true },
							   { "input" : "foo1", "expect" : false, "streamAtEnd" : false } ],
		 "syntacticExpressionMatch" : [ 
			  				   { "input" : " foo ", "expect" : true },
							   { "input" : " bar", "expect" : false, "streamAtEnd" : false} ],
		"matchInterval" : [ 	   { "input" : "foo", "expectInterval" : [[4,4]] } ],
		"matchTree" : 	[ 	   
				{ "input" : "foo", "expectedTree" : { 
					"ruleName" : "ruleOne", 
					"children" : [ 
						{"ruleName" : "_terminal", "children" : null} , {"ruleName" : "end", "children": [] } ] } } ]  }'
        