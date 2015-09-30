build-instructions
addRule: ruleName as: ruleBody

	grammar defaultStartRuleName ifNil: [grammar defaultStartRuleName: ruleName].

	grammar ruleDeclarations at: ruleName asSymbol 
		put: (OhmRuleDefine newNamed: ruleName asSymbol
	 			body: ruleBody description: '').