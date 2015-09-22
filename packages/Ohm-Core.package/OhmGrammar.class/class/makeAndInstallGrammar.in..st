instance creation
makeAndInstallGrammar: description in: namespaceName

	| grammar |
	grammar := OhmCompiler compileGrammarDefinition: description andInstallIn: namespaceName.
	OhmCompiler installGrammar: grammar intoNamespace: namespaceName.
	^ grammar
	