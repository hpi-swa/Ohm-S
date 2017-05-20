utilities
possibleActionsForRule: anOhmRule
	
	| result ruleName ruleMessageName|
	ruleName := anOhmRule ruleName asSymbol.
	ruleMessageName := self ruleNameToMessageName: ruleName.
	result := OrderedCollection new.
	self allSubclassesDo: [ :attribute | |messages|
		messages := attribute allSelectorsBelow: attribute superclass. 
		result addAll: (messages select: [:msg | msg beginsWith: ruleMessageName] thenCollect: [:msg | attribute >> msg]) ].
	^ result