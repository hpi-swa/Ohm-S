checking
performChecksFor: aGrammar
	
	| superRule |
	superRule := aGrammar superGrammar ruleDeclarationNamed: self ruleName.
	self checkForSameParametersAs: superRule in: aGrammar.
	
	self checkForSameArityIn: aGrammar.
		
	super performChecksFor: aGrammar.