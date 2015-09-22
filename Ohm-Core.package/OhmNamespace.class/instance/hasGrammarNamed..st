accessing
hasGrammarNamed: grammarName

	^ self grammars anySatisfy: [:g | g grammarName = grammarName]