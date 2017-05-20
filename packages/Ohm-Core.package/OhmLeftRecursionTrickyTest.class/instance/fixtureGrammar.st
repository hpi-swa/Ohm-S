accessing
fixtureGrammar

	"G {
            tricky = &foo bar
            foo = fooRec | digit
            fooRec = bar digit
            bar = barRec | digit
            barRec = foo digit
            }"
	| rules |
	rules := Dictionary new.
	rules at: #tricky put: (OhmPExprSeq newOn: { OhmPExprLookahead newOn: (OhmPExprApply  newOn: #foo) . OhmPExprApply newOn: #bar }).
	rules at: #foo put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #fooRec . OhmPExprApply  newOn: #digit  }).
	rules at: #fooRec put: (OhmPExprSeq newOn: { OhmPExprApply newOn: #bar . OhmPExprApply  newOn: #digit  }).
	rules at: #bar put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #barRec . OhmPExprApply  newOn: #digit  }).
	rules at: #barRec put: (OhmPExprSeq newOn: { OhmPExprApply newOn: #foo . OhmPExprApply  newOn: #digit  }).
	
	^ OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules.