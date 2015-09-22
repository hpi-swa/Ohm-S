compiling
compileGrammarDefinitions: textualRepresentation in: namespaceName

	| csts |
	csts := OhmGrammarOfOhm 
				matchContents: textualRepresentation 
				startingFrom: 'Grammars' 
				failureAsException: true.
  
	^ (OhmGrammarOfOhm 
			semanticAction: (OhmCompileGrammar newIn: (OhmNamespace named: namespaceName))) value: csts