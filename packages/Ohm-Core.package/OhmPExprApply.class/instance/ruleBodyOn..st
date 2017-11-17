accessing
ruleBodyOn: state
	
	cachedRuleBodyGrammar ~= state  
		ifTrue: [cachedRuleBody := nil].	
	cachedRuleBody ifNil: [
		cachedRuleBody := (state grammar ruleNamed: ruleName)
			replaceParametersWithArguments: self arguments.
		cachedRuleBodyGrammar := state.].
	^ cachedRuleBody