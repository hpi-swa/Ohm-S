build-instructions
addRule: ruleName as: ruleBody

	grammar ruleDeclarations at: ruleName asSymbol 
		put: (OhmRuleDefine newNamed: ruleName asSymbol
	 			body: ruleBody description: '').