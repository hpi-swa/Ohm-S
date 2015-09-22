instance creation
makeAndInstallGrammars: description in: namespaceName
	| grammars |
	grammars := OhmCompiler 
					compileGrammarDefinitions: description
					andInstallIn: namespaceName.
	"grammars do: [:grammar |
		OhmCompiler installGrammar: grammar intoNamespace: namespaceName]."
	^ grammars
	