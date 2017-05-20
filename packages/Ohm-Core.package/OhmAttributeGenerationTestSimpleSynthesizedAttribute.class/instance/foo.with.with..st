attributes
foo: aNode with: barExpr with: bazExpr

	| barResult bazResult barResult2 |
	bazResult := self value: bazExpr.
	barResult := self value: barExpr.
	barResult2 := self value: barExpr.

	^ { barResult . bazResult . barResult2 }