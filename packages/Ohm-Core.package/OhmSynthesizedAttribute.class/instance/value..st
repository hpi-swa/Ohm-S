evaluation
value: aNode

	(self memoization includesKey: aNode)
		ifFalse: [ self memoization at: aNode put: (super value: aNode) ].

	^ self memoization at: aNode