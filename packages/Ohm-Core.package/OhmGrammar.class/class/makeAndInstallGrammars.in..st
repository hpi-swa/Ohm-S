instance creation
makeAndInstallGrammars: description in: namespaceName
	| grammars |
	grammars := OhmCompiler 
					compileGrammarDefinitions: description
					andInstallIn: namespaceName.
	^ grammars
	