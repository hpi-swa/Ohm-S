evaluation
defaultAttributeApplicable: ruleName on: aNode

	^ (self class canUnderstand: #defaultExpression:) 
			and: [(ruleName = OhmParsingExpression listRuleIdentifier) not]					