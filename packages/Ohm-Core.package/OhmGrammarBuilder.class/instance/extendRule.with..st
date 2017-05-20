build-instructions
extendRule: ruleName with: ruleBody

	grammar ruleDeclarations at: ruleName asSymbol 
		put: (OhmRuleExtend 
				newNamed: ruleName asSymbol
	 			body: ruleBody).