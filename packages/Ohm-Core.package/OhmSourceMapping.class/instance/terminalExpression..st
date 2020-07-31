standard attributes
terminalExpression: aNode

	aNode isNotEmpty ifTrue: [
		aNode interval start
			to: aNode interval end
			do: [ :index | (self sourceMap at: index) add: aNode ] ]