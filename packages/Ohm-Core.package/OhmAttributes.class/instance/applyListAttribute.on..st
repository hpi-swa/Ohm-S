evaluation
applyListAttribute: ruleName on: aNode

	| listElementActionName actionName actionNameIndexPart |
	actionName := self class ruleNameToMessageName: aNode parent ruleName.
	actionNameIndexPart := aNode parent children indexOf: aNode ifAbsent: [Error signal].
	listElementActionName := (actionName , 'At' , actionNameIndexPart) asSymbol.
	
	((self class allSelectorsBelow: Object) includes: listElementActionName)
		ifTrue: [^ self perform: listElementActionName withArguments: { aNode }.]
		ifFalse: [^ self listExpression: aNode] 