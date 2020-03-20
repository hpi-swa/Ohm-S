fixtures
leftRecursionNonInvolved

	^ '{ "grammar" : "M {add = addRec | pri
				            addRec = add \"+\" pri
				            pri = priX | priY
				            priX = \"x\"
				            priY = \"y\" }", 
		"matchContents" : [ { "input" : "x+y+x", "expect" : true } ] }'
        