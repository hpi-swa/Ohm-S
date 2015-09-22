accessing
initialize

	self grammarName: ''.
	self ruleDeclarations: Dictionary new.
	
	self superGrammar: OhmBaseGrammar OhmInstance.