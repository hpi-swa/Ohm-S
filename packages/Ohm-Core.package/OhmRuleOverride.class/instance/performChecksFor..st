accessing
performChecksFor: aGrammar

	| superRule |
	superRule := aGrammar superGrammar ruleNamed: self ruleName.

	super performChecksFor: aGrammar.