instance creation
hasGrammarNamed: grammarName

	^ self installedGrammars anySatisfy: [:g | g grammarName = grammarName ]