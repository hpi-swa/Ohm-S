standard attributes
terminalExpression: aNode

	aNode interval start to: aNode interval end do: [:i |
		(self sourceMap at: i) add: aNode]