actions
SuperGrammarQualified: aNode with: x with: namespaceNameNode with: xx with: grammarNameNode


	| grammarName namespaceName ohmNamespace |
	namespaceName := namespaceNameNode interval contents.
	grammarName := grammarNameNode interval contents.
	ohmNamespace := OhmNamespace named: namespaceName 
		ifAbsent: [ OhmUndeclaredGrammarError signal: 
			namespaceNameNode interval contents, 
			grammarNameNode interval contents].
		
	self grammarToBuild superGrammar: (ohmNamespace grammarNamed: grammarName)