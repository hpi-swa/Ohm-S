fixtures
ohmPExprOptComplex

	^ '{ 
		"grammar" : "G {
						ruleOne = (\"dr\" \"ied\")? }",
		"matchTree" : [
			   { "input" : "", 
				"expectedTree" : {"ruleName" : "ruleOne", "children" : [
					{"ruleName" : "_terminal", "children" : [null]}, 
					{"ruleName" : "_terminal", "children" : [null] }] } },
			   { "input" : "dr", 
				"expectedTree" : {"ruleName" : "ruleOne", "children" : [
					{"ruleName" : "_terminal", "children" : [null] }, 
					{"ruleName" : "_terminal", "children" : [null] }] } } ]  }'.
        