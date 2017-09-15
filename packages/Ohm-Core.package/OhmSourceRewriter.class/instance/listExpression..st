standard attributes
listExpression: aNode

	| separator syntacticNode |
	syntacticNode := self isNameOfSyntacticRule: aNode parent ruleName.
	
	separator := syntacticNode ifTrue: [String space] ifFalse: [String empty].

	^ (aNode children collect: [:child | self value: child])
		joinSeparatedBy: separator