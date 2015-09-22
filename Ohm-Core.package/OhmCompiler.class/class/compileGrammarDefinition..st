compiling
compileGrammarDefinition: textualRepresentation

	^ self compileGrammarDefinition: textualRepresentation andInstallIn: OhmNamespace defaultNamespace packageName
	