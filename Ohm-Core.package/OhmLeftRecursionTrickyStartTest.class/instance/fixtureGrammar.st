as yet unclassified
fixtureGrammar

	^ OhmGrammar makeGrammar: 'G {
            expr = expr ''+'' ''foo''  -- plus
				| expr ''-'' ''bar'' -- minus
				| ''foobar'' 		
            }'
	