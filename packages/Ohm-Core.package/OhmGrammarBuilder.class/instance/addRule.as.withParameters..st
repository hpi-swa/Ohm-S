as yet unclassified
addRule: ruleName as: ruleBody withParameters: aCollection 
	
	grammar defaultStartRuleName ifNil: [grammar defaultStartRuleName: ruleName].

	grammar ruleDeclarations at: ruleName asSymbol 
		put: (OhmRuleDefine 
				newNamed: ruleName asSymbol
				withParameters: aCollection
	 			body: ruleBody 
				description: '').