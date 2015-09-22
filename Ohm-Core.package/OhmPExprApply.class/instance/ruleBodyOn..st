as yet unclassified
ruleBodyOn: state
	
	cachedRuleBodyGrammar ~= state  
		ifTrue: [cachedRuleBody := nil].	
	cachedRuleBody ifNil: [
		cachedRuleBody := state grammar ruleNamed: ruleName.
		cachedRuleBodyGrammar := state.].
	^ cachedRuleBody