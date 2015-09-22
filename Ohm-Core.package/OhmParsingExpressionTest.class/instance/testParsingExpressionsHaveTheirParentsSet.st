private
testParsingExpressionsHaveTheirParentsSet

	| testExpr temp |
	testExpr := OhmParsingExpression new.

	{ OhmPExprLookahead . OhmPExprNot . OhmPExprOpt }
		do: [:Pexpr | | r | r := Pexpr newOn: testExpr.
				self assert: r equals: testExpr parentExpression ].

	{ OhmPExprAlt . OhmPExprSeq }
		do: [:Pexpr | | r | r := Pexpr newOn: { testExpr . testExpr }.
				self assert: r equals: testExpr parentExpression ].

	temp := OhmPExprMany newStarOn: testExpr.
	self assert: temp equals: testExpr parentExpression.
	temp := OhmPExprMany newPlusOn: testExpr.
	self assert: temp equals: testExpr parentExpression.