accessing
fixtureGrammar
	
	"M { number = numberRec | digit 
             numberRec = number digit }"

	| rules |
	rules := Dictionary new.
	rules at: #number put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #numberRec . OhmPExprApply  newOn: #digit }).
	rules at: #numberRec put: (OhmPExprSeq newOn: { OhmPExprApply newOn: #number . OhmPExprApply  newOn: #digit  }).
	
	^ OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules