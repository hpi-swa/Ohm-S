accessing
callersToMe

	| enclosingExpressions |
	
	enclosingExpressions := OhmPExprApply allInstances 
		select: [:apply | apply ruleName asSymbol = self ruleName asSymbol]
		thenCollect: #rootExpression.
	^ self boundGrammar grammarHierarchyIncludingSelf
		gather: [:g | g rules select:  [:r | enclosingExpressions includes: r body]]