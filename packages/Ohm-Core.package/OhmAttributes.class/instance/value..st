evaluation
value: inputNode

	| selectors ruleName ruleMessageName aNode |
	(inputNode isKindOf: OhmMatchResult) 
		ifTrue: [aNode := inputNode cst]
		ifFalse: [aNode := inputNode ].
	selectors := self class allSelectorsBelow: OhmAttributes.
	ruleName := aNode ruleName asSymbol.
	ruleMessageName := self class ruleNameToMessageName: ruleName.
	
	selectors := selectors select: [:msg | msg beginsWith: ruleMessageName].
	self assert: selectors size <= 1.
	
	selectors size = 1
		ifTrue:  [ ^ self 
						perform: selectors anyOne 
						withArguments: ({ aNode } , (aNode children)). ]
		ifFalse: [ ^ self 
						tryToUseSpecialAttributesFor: ruleName 
						asMessage: ruleMessageName on: aNode ].