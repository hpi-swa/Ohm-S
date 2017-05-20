instance creation
newOn: terms

	| newExpr |
	newExpr := (self new)
		terms: terms;
		yourself.
	terms do: [:t | t parentExpression: newExpr.].
	^ newExpr