evaluation
dispatch: messageName for: aNode withChildren: childrenIncluded

	^ childrenIncluded
		ifTrue: [ self perform: messageName 
					withArguments: { aNode parent . aNode . aNode parent children indexOf: aNode ifAbsent: [ Error signal: 'Broken concrete syntax tree' ] }. ]
		ifFalse:  [ self perform: messageName 
					withArguments: { aNode parent . aNode }. ]

	