tests
testLeftRecursionCanBeDealtWithSideNestedIterativeImpl
	"This is the iterative implementation of #testLeftRecursionCanBeDealtWithSideNested which does not 
	suffer from the same problem."
	"M {
            addExpr = normalAddExpr | wrappedAddExpr
		wrappedAddExpr = "">>"" addExpr "">>"" 
		normalAddExpr  = addExpRec ""+"" primaExpr
		addExprRec = addExpr | primaExpr
		primaExpr = priExpr ""-""*
            priExpr = /[0-9]/ }"
	| rules grammar |
	rules := Dictionary new.
	rules at: #addExpr put: (OhmPExprAlt newOn: {OhmPExprApply newOn: #normalAddExpr . OhmPExprApply  newOn: #wrappedAddExpr }).
	rules at: #wrappedAddExpr put: (OhmPExprSeq newOn: {OhmPExprString newOn: '>>' . OhmPExprApply newOn: #addExpr . OhmPExprString newOn: '>>' }).
	rules at: #normalAddExpr put: (OhmPExprSeq newOn: {OhmPExprApply newOn: #addExprRec . OhmPExprString newOn: '+' . OhmPExprApply newOn: #primaExpr}).
	rules at: #addExprRec put:  (OhmPExprAlt newOn: {OhmPExprApply newOn: #addExpr . OhmPExprApply  newOn: #primaExpr }).
	rules at: #primaExpr put: (OhmPExprSeq newOn: {OhmPExprApply newOn: #priExpr . OhmPExprMany newStarOn: (OhmPExprString newOn: '-')}).
	rules at: #priExpr put: (OhmPExprRegex newOn: '[0-9]').
	
	grammar := OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules.
	
	self 
		assertGrammar: grammar
		startingFrom: #addExpr
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionSideNested
	