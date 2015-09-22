evaluation
tryToUseSpecialAttributesFor: ruleName asMessage: ruleMessageName on: aNode

	(self specialAttributeAvailable: ruleName) ifTrue:
		[ ^ self applySpecialAttribute: ruleName on: aNode ].
	
	(self defaultAttributeApplicable: ruleName on: aNode) ifTrue:
		[ ^ self defaultExpression: aNode].
					
	"Else"
	OhmMissingAttributeMethod signal: ruleMessageName.							