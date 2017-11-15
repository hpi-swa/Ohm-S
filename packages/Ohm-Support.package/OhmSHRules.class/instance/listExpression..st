actions
listExpression: aNode

	^ aNode children gather: [:child | self value: child]