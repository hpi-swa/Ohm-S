tests
testLeftRecursionCanBeDealtWithSideNestedSimple

	"M {
            addExpr = wrappedAddExpr | primaExpr
		wrappedAddExpr = "">>"" addExpr "">>"" 
		primaExpr = primaExprRec | priExpr
		primaExprRec = primaExpr ""-""
            priExpr = /[0-9]/ }"
	| rules grammar |
	rules := Dictionary new.
	rules at: #addExpr put: (OhmPExprAlt newOn: {OhmPExprApply newOn: #wrappedAddExpr . OhmPExprApply  newOn: #primaExpr }).
	rules at: #wrappedAddExpr put: (OhmPExprSeq newOn: {OhmPExprString newOn: '>>' . OhmPExprApply newOn: #addExpr . OhmPExprString newOn: '>>' }).
	rules at: #primaExpr put: (OhmPExprAlt newOn: {OhmPExprApply newOn: #primaExprRec . OhmPExprApply newOn: #priExpr}).
	rules at: #primaExprRec put: (OhmPExprSeq newOn: {OhmPExprApply newOn: #primaExpr . OhmPExprString  newOn: '-'}).
	rules at: #priExpr put: (OhmPExprRegex newOn: '[0-9]').
	
	grammar := OhmGrammar newWithName: 'TestGrammar' ruleDictionary: rules.
	
	self assert: (grammar match: '>>>>2>>>>' startingFrom: #addExpr) succeeded.
	self assert: (grammar match: '>>>>2-->>>>' startingFrom: #addExpr) succeeded
	