standard attributes
defaultExpression: aNode

	(aNode interval start to: (aNode interval end min: self sourceMap size))
		do: [:index | (self sourceMap at: index) add: aNode].
  
	aNode children do: [:c | self value: c].