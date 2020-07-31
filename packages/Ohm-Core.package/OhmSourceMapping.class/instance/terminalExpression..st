standard attributes
terminalExpression: aNode

	aNode isNotEmpty ifTrue: [ aNode interval start
		to: aNode interval end
		do: [ :i | (self sourceMap at: i) add: aNode ] ]