evaluation
tryToUseSpecialAttributesFor: ruleName asMessage: ruleMessageName on: aNode
	
	ruleName = OhmParsingExpression listRuleIdentifier ifTrue: [
		^ self applyListAttribute: ruleName on: aNode].

	ruleName = OhmParsingExpression terminalRuleIdentifier ifTrue: [
		^ self terminalExpression: aNode].
	
	(self defaultAttributeApplicable: ruleName on: aNode) ifTrue: [ 
		^ self defaultExpression: aNode].
					
	"Else"
	OhmMissingAttributeMethod signal: ruleMessageName.							