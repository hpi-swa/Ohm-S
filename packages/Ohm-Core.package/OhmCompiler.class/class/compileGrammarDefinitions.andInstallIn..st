compiling
compileGrammarDefinitions: textualRepresentation andInstallIn: namespaceName

	| csts |
	csts := OhmGrammarOfOhm 
				matchContents: textualRepresentation 
				startingFrom: 'Grammars' 
				failureAsException: true.
  
	^ (OhmGrammarOfOhm 
			semanticAction: (OhmCompileAndInstallGrammar newIn: (OhmNamespace named: namespaceName))) value: csts