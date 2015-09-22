actions
SuperGrammarQualified: aNode with: x with: namespaceNameNode with: xx with: grammarNameNode


	| grammarName |
	grammarName := grammarNameNode interval contents.
		
	self grammarToBuild superGrammar: (OhmGrammar grammarNamed: grammarName)