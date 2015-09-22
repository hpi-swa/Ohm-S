as yet unclassified
foo: aNode bar: barExpr baz: bazExpr

	| barResult bazResult |
	bazResult := self value: bazExpr.
	barResult := self value: barExpr.
 
	^ { barResult . bazResult }