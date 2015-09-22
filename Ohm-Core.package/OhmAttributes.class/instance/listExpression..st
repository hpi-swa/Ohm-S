standard attributes
listExpression: aNode

	^ aNode children collect: [ :child | self value: child ]