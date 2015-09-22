installing
installGrammar: grammar intoNamespace: namespaceName

	| namespace |
	namespace := OhmNamespace named: namespaceName.
	(OhmGrammar hasGrammarNamed: grammar grammarName)
		ifTrue: [OhmDuplicateGrammarDefinitionError signalForGrammar: grammar ]
		ifFalse: [grammar namespace: namespace.
				self initializeSmalltalkClassFor: grammar.    ].
	