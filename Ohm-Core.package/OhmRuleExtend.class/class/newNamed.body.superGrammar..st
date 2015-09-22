instance creation
newNamed: ruleName body: b superGrammar: superGrammar

	| newDeclaration |
	newDeclaration := self new
		ruleName: ruleName;
		body: b;
		superGrammar: superGrammar.

	newDeclaration baseRule: (superGrammar ruleNamed: ruleName).

	^ newDeclaration