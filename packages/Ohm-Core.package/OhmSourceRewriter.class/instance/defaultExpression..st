standard attributes
defaultExpression: aNode

	| isSyntacticRule result |
	isSyntacticRule := self isNameOfSyntacticRule: aNode ruleName.
	result := (aNode children inject: '' into: [:string :child |
		string , (isSyntacticRule 
			ifTrue: [' ']
			ifFalse: ['']) , (self value: child)]).
	^ isSyntacticRule ifTrue: [result withBlanksTrimmed] ifFalse: [result]