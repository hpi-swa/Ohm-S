accessing
ruleBodyOn: state
	
	cachedRuleBodyParseId ~= state idOfParseProcess  
		ifTrue: [cachedRuleBody := nil].	
	cachedRuleBody ifNil: [
		cachedRuleBody := (state grammar ruleNamed: ruleName asSymbol)
			replaceParametersWithArguments: self arguments.
		cachedRuleBodyParseId := state idOfParseProcess.].
	^ cachedRuleBody