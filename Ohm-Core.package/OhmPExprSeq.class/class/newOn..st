as yet unclassified
newOn: terms

	| newExpr |
	terms size = 1
		ifTrue: [ ^ terms first ]
		ifFalse: [newExpr := (self new)
					terms: terms;
					yourself.
				terms do: [:t | t parentExpression: newExpr.].
				^ newExpr]