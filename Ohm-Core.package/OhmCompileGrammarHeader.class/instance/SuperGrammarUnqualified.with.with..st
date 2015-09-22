actions
SuperGrammarUnqualified: aNode with: x with: grammarNameNode

	| grammarName ohmNamespace |
	grammarName := grammarNameNode interval contents.
	ohmNamespace := self namespace.
		
	self grammarToBuild superGrammar: (ohmNamespace grammarNamed: grammarName)