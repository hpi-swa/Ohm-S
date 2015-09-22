actions
SuperGrammarUnqualified: aNode with: x with: grammarNameNode

	| grammarName |
	grammarName := grammarNameNode interval contents.
		
	self grammarToBuild superGrammar: (OhmGrammar grammarNamed: grammarName)