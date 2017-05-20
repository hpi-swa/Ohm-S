testing
testBuilderAddRule

	| grammar |
	b addRule: 'failer' as: b fail.
	grammar := b buildGrammar.
	
	self 
		assert: (grammar ruleNamed: 'failer') class expressionName
		equals: #ohmPExprFail.