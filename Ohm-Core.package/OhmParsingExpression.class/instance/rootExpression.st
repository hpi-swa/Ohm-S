accessing
rootExpression

	^ self parentExpression
		ifNil: [ self ]
		ifNotNil: [ self parentExpression rootExpression ].