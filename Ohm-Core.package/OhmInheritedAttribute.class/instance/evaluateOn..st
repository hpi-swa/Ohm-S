evaluation
evaluateOn: aNode

	| result |

	self pushChild: aNode.

	aNode parent
		ifNil: [ result := self applyBaseOn: aNode ]
		ifNotNil: [ aNode parent ruleName = OhmParsingExpression listRuleIdentifier 
					ifTrue: 	[ result := self applyListAttributeOn: aNode ]
					ifFalse: 	[ result := self applyStandardOn: aNode ]].

	self popChild.

	^ result