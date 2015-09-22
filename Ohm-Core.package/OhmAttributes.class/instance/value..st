evaluation
value: aNode

	| messages ruleName ruleMessageName |
	messages := self class allSelectorsBelow: OhmAttributes.
	ruleName := aNode ruleName asSymbol.
	ruleMessageName := self class ruleNameToMessageName: ruleName.
	
	messages := messages select: [:msg | msg beginsWith: ruleMessageName].
	self assert: messages size <= 1.
	
	(messages size = 1)
		ifTrue:  [ ^ self perform: messages someElement withArguments: ({ aNode } , (aNode children)). ]
		ifFalse: [ ^ self tryToUseSpecialAttributesFor: ruleName asMessage: ruleMessageName on: aNode ].