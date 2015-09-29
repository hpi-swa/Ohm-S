instance creation
makeAndInstallGrammar: description in: namespaceName

	| grammar |
	grammar := OhmCompiler compileGrammarDefinition: description inNamespace: namespaceName.
	OhmCompiler installGrammar: grammar intoNamespace: namespaceName.
	^ grammar
	