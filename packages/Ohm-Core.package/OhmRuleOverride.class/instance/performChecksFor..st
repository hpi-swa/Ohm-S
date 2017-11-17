accessing
performChecksFor: aGrammar

	| superRule |
	superRule := aGrammar superGrammar ruleDeclarationNamed: self ruleName.
	self checkForSameParametersAs: superRule in: aGrammar.

	super performChecksFor: aGrammar.