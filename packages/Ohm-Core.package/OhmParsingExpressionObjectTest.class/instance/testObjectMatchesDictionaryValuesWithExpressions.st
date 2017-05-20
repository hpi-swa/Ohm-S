testing
testObjectMatchesDictionaryValuesWithExpressions

	| dict objectExpression |
	dict := Dictionary newFrom: { #x => (OhmPExprMany newStarOn: (OhmPExprString newOn: 'foo')) . #y => (OhmPExprPrimObject newOn: 2) }.
	objectExpression := OhmPExprObject newOn: dict inMode: #strict.
	"self 
		assertParsingExpression: objectExpression 
		asSyntactic: false
		compliesWithItsFixture: #matchStringValue."