instance creation
newOn: term

	| newExpr |
	newExpr := (self new)
		term: term;
		yourself.
	term parentExpression: newExpr.
	^ newExpr