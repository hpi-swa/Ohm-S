actions
defaultExpression: aNode

	^ (aNode children collect: [:child | self value: child]) gather: [:r | r]