instance creation
grammarNamed: grammarName

	^ self installedGrammars 
		detect: [:g | g grammarName = grammarName ]
		ifNone: [ OhmUndeclaredGrammarError signalForGrammar: grammarName ]