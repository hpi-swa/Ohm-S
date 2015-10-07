compiling
compileGrammarDefinition: textualRepresentation inNamespace: namespaceName

	| cst |

	cst := OhmGrammarOfOhm 
				match: textualRepresentation 
				startingFrom: 'Grammar'.
	
	^ (OhmGrammarOfOhm 
			semanticAction: (OhmCompileGrammar newIn: (OhmNamespace named: namespaceName))) value: cst
	