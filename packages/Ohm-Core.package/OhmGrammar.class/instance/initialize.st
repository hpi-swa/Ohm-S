accessing
initialize

	self grammarName: ''.
	self ruleDeclarations: Dictionary new.
	
	self superGrammar: OhmBuiltIn OhmInstance.