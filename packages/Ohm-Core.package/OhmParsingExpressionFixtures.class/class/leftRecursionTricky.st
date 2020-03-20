fixtures
leftRecursionTricky

	^ '{ "grammar" : "G {
				            tricky = &foo bar
				            foo = fooRec | digit
				            fooRec = bar digit
				            bar = barRec | digit
				            barRec = foo digit }", 
		"matchContents" : [ { "input" : "1234", "expect" : true } ] }'
        