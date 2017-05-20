standard attributes
listExpression: aNode

	^ aNode children
		inject: true 
		into: [:matches :child | matches and: [self value: child]]