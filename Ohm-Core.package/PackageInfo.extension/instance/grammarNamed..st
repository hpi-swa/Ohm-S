*Ohm-Core
grammarNamed: grammarName

	| smalltalkPlaceholder |
	smalltalkPlaceholder :=
		self 
			grammars detect: [:g | g grammarName = grammarName]
			ifNone: [ OhmUndeclaredGrammarError signalForGrammar: grammarName inNamespace: self packageName ].
		
	^ smalltalkPlaceholder