as yet unclassified
ohmPExprString

	^ '{ 
           "grammar" : "M { foo = ''foo'' }",
		"expressionMatch" : 
		[	{ "input" : "foo", "expect" : "ok" },
			{ "input" : "foo1", "expect" : "ok", "streamAtEnd" : false},
			{ "input" : "bar", "expect" : false, "streamAtEnd" : false } ],
           "match" : 
		[	{ "input" : "foo",   "rule" : "foo", "expect" : "ok"},
			{ "input" : "foo1", "rule" : "foo", "expect" : true},
  			{ "input" : "bar",   "rule" : "foo", "expect" : false},
			{ "input" : null,     "rule" : "foo", "expect" : false} ],
           "matchContents" : 
		[ 	{"input" : "foo",  "rule" : "foo", "expect" : "ok"},
			{"input" : "foo1", "rule" : "foo", "expect" : false},
			{"input" : "bar",  "rule" : "foo", "expect" : false} ],
           "matchListStream" :  
		[	{"input" : ["foo"],        "rule" : "foo", "expect" : "ok" },
    			{"input" : ["foo1"],       "rule" : "foo", "expect" : false},
			{"input" : ["foo", "1"],   "rule" : "foo", "expect" : false},
			{"input" : ["foo", "foo"], "rule" : "foo", "expect" : false},
			{"input" : [""],           "rule" : "foo", "expect" : false},
			{"input" : [],             "rule" : "foo", "expect" : false} ],
		"matchInterval" :
		[ 	{"input" : "foo", "expectInterval" : [[1,3]] },
			{"input" : "foo1", "expectInterval" : [[1,3]] } ],
		"matchTree" :
		[ 	{"input" : "foo", "expectedTree" : {"ruleName":"ruleOne", "children":[{"ruleName" : "_terminal", "children" : ["foo"]}]} } ] }'
        