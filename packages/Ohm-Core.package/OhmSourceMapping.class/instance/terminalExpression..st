standard attributes
terminalExpression: aNode

	aNode interval start
		to: (aNode interval end min: self sourceMap size)
		do: [:i | (self sourceMap at: i) add: aNode]