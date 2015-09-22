build-instructions
extendRule: ruleName with: ruleBody

	grammar ruleDeclarations at: ruleName asSymbol 
		put: (OhmRuleDefine newNamed: ruleName asSymbol
	 			body: ruleBody superGrammar: grammar superGrammar).
	grammar rules at: ruleName asSymbol put: ruleBody