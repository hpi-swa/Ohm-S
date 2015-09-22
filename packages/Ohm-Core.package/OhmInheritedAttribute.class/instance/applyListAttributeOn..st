evaluation
applyListAttributeOn: aNode

	| actionName grandparent messages |
	grandparent := aNode parent parent. "TODO: is this legal? --pre"

	actionName := 
		grandparent ruleName , 
		'At' , 
		(grandparent children indexOf: aNode parent ifAbsent: [ Error signal: 'Broken concrete syntax tree' ]) ,
		'ForEach'.

	messages := self class allSelectorsBelow: OhmAttributes.
	
	(messages includes: actionName)
		ifTrue: [ ^ self dispatch: actionName for: aNode ]
		ifFalse: [ (messages includes: #listExpression:on:at:)
					ifTrue: [ ^ self dispatch: #listExpression:on:at: for: aNode withChildren: true ].
				 (messages includes: #defaultExpression:on:)
					ifTrue: [ ^ self dispatch: #defaultExpression:on: for: aNode withChildren: true].
				 OhmMissingAttributeMethod signal: actionName. ] "TODO: better error message, as the default actions are also missing at this point --pre"