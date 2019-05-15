tests
testLeftRecursionCanBeDealtWith

	"M { number = foo | digit
           foo = bar
           bar = baz
           baz = qux
           qux = quux
           quux = numberRec
           numberRec = number digit }"
	| rules grammar |
	rules := Dictionary new.
	rules at: #number put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #foo . OhmPExprApply  newOn: #digit }).
	rules at: #foo put: (OhmPExprApply newOn: #bar).
	rules at: #bar put: (OhmPExprApply newOn: #baz).
	rules at: #baz put: (OhmPExprApply newOn: #qux).
	rules at: #qux put: (OhmPExprApply newOn: #quux).
	rules at: #quux put: (OhmPExprApply newOn: #numberRec).
	rules at: #numberRec put: (OhmPExprSeq newOn: { OhmPExprApply newOn: #number . OhmPExprApply  newOn: #digit  }).	

	grammar := OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules.

	self 
		assertGrammar: grammar
		startingFrom: #number
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionIndirect.
	