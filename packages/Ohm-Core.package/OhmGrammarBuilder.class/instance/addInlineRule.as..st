build-instructions
addInlineRule: ruleName as: ruleBody

	grammar ruleDeclarations at: ruleName asSymbol 
		put:(OhmRuleInline newNamed: ruleName asSymbol body: ruleBody).
	self addRule: ruleName asSymbol as: ruleBody