evaluation
applyBaseOn: aNode
	
	(self class allSelectors includes: #baseExpression:)
		ifFalse: [ Error signal: 'The base expression of an iherited attribute has not been defined.'].

	^ self baseExpression: aNode