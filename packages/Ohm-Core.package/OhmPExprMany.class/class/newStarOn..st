as yet unclassified
newStarOn: term 

	|newExpr|
	newExpr := self newOn: term minimalMatches: 0.
	term parentExpression: newExpr.
	^ newExpr