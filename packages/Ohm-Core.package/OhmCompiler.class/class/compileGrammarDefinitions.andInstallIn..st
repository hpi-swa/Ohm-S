compiling
compileGrammarDefinitions: textualRepresentation andInstallIn: namespaceName

	| csts |
	csts := OhmGrammarOfOhm 
				match: textualRepresentation 
				startingFrom: 'Grammars'.
  
	^ (OhmGrammarOfOhm semanticAction: 
		(OhmCompileAndInstallGrammar newIn: (OhmNamespace named: namespaceName))) value: csts