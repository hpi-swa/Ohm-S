as yet unclassified
newPlusOn: term 
	|newExpr|
	newExpr := self newOn: term minimalMatches: 1.
	term parentExpression: newExpr.
	^ newExpr