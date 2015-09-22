installing
initializeSmalltalkClassFor: grammar

	| smalltalkClass |
	
	smalltalkClass := OhmGrammarSmalltalkProxy 
		subclass: grammar grammarName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: grammar namespace namespaceName.
	smalltalkClass
		initialize;
		OhmInstance: grammar.
	grammar 
		smalltalkPlaceholder: smalltalkClass;
		serializeToSmalltalkClass.