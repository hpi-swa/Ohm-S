accessing
initialize

	self grammarName: ''.
	self ruleDeclarations: Dictionary new.
	
	self superGrammar: OhmBuiltInRules OhmInstance.