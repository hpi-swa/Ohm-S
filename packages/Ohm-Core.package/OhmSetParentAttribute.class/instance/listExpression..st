evaluation
listExpression: aNode

	^ aNode children do: [ :child |
		child parent: aNode.
		self value: child. ]