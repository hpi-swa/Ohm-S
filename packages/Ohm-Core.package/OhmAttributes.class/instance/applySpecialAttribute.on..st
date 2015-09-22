evaluation
applySpecialAttribute: ruleName on: aNode

	ruleName = OhmParsingExpression listRuleIdentifier 
		ifTrue: [ ^ self applyListAttribute: ruleName on: aNode ].

	ruleName = OhmParsingExpression terminalRuleIdentifier 
		ifTrue: [ ^ self terminalExpression: aNode ].

	"Else: Should not happen"
	OhmMissingAttributeMethod signal: ruleName.	