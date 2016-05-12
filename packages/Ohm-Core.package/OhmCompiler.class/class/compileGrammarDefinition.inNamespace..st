compiling
compileGrammarDefinition: textualRepresentation inNamespace: namespaceName

	| cst |

	cst := OhmGrammarOfOhm 
				match: textualRepresentation 
				startingFrom: 'Grammar'.
		
	cst failed ifTrue: [OhmMatchFailure signalFor: cst state startedFrom: 'Grammar']. 
	
	^ (OhmGrammarOfOhm 
			semanticAction: (OhmCompileGrammar newIn: (OhmNamespace named: namespaceName))) value: cst
	