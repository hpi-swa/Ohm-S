compiling
compileGrammarDefinitions: textualRepresentation in: namespaceName

	| csts |
	csts := OhmGrammarOfOhm 
				match: textualRepresentation 
				startingFrom: 'Grammars'.
  
	^ (OhmGrammarOfOhm 
			semanticAction: (OhmCompileGrammar newIn: (OhmNamespace named: namespaceName))) value: csts