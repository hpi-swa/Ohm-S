compiling
compileGrammarDefinition: textualRepresentation

	^ self 
		compileGrammarDefinition: textualRepresentation 
		inNamespace: OhmNamespace defaultNamespace packageName
	