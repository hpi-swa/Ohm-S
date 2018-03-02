as yet unclassified
Statements: aNode withManyStatements: statements withLiterals: literals
	
	^ statements children 
		inject: '' 
		into: [:code :node | code , (self value: node) , '.' , Character cr]