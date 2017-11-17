build-instructions
extendRule: ruleName with: ruleBody withParameters: parameters

	grammar ruleDeclarations at: ruleName asSymbol 
		put: (OhmRuleExtend 
				newNamed: ruleName asSymbol
				parameters: parameters
	 			body: ruleBody).