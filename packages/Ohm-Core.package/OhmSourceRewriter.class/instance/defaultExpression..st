standard attributes
defaultExpression: aNode

	| isSyntacticRule |

	isSyntacticRule := self isNameOfSyntacticRule: aNode ruleName.
	^ (aNode children inject: '' into: [ :string :child |
		string , (isSyntacticRule 
			ifTrue: [' ']
			ifFalse: ['']) , (self value: child) ]) withBlanksTrimmed