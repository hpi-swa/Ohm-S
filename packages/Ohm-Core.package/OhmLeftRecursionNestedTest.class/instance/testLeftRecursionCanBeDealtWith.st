as yet unclassified
testLeftRecursionCanBeDealtWith

	"M {
            addExpr = addExprRec | mulExpr
            addExprRec = addExpr ''+'' mulExpr
            mulExpr = mulExprRec | priExpr
            mulExprRec = mulExpr ''*'' priExpr
            priExpr = /[0-9]/
            sss = &addExpr addExpr }"
	| rules grammar |
	rules := Dictionary new.
	rules at: #addExpr put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #addExprRec . OhmPExprApply  newOn: #mulExpr }).
	rules at: #addExprRec put:  (OhmPExprSeq newOn: { OhmPExprApply newOn: #addExpr . OhmPExprString newOn: '+' . OhmPExprApply  newOn: #mulExpr  }).
	rules at: #mulExpr put: (OhmPExprAlt newOn: { OhmPExprApply newOn: #mulExprRec . OhmPExprApply  newOn: #priExpr }).
	rules at: #mulExprRec put: (OhmPExprSeq newOn: { OhmPExprApply newOn: #mulExpr . OhmPExprString newOn: '*' . OhmPExprApply  newOn: #priExpr  }).
	rules at: #priExpr put: (OhmPExprRegex newOn: '[0-9]').
	rules at: #sss put: (OhmPExprSeq newOn: { OhmPExprLookahead newOn: (OhmPExprApply newOn: #addExpr) . OhmPExprApply newOn: #addExpr }).

	grammar := OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules.

	self 
		assertGrammar: grammar
		startingFrom: #addExpr
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionNested
	