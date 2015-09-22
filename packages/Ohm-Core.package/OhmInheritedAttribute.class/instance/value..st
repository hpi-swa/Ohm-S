evaluation
value: aNode

	(self memoization includesKey: aNode)
		ifFalse: [ self evaluateOn: aNode.
				"TODO: check whether attribute was set" ].

	^ self memoization at: aNode