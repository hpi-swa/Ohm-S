as yet unclassified
testLeftRecursionCanBeDealtWith

	"M {
            add = addRec | pri
            addRec = add ""+"" pri
            pri = priX | priY
            priX = ""x""
            priY = ""y"" }"
	| rules grammar |
	rules := Dictionary new.
	rules at: #add put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #addRec . OhmPExprApply  newOn: #pri }).
	rules at: #addRec put: (OhmPExprSeq newOn: { OhmPExprApply newOn: #add . OhmPExprString newOn: '+' . OhmPExprApply  newOn: #pri  }).
	rules at: #pri put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #priX . OhmPExprApply  newOn: #priY }).
	rules at: #priX put: (OhmPExprString newOn: 'x').
	rules at: #priY put: (OhmPExprString newOn: 'y').		

	grammar := OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules.

	self 
		assertGrammar: grammar
		startingFrom: #add
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionNonInvolved.
	