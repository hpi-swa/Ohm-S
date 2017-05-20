as yet unclassified
fixtureGrammar

	^ OhmGrammar new: 'G {
            expr = expr "+" "foo"  -- plus
				| expr "-" "bar" -- minus
				| "foobar" 		
            }'
	