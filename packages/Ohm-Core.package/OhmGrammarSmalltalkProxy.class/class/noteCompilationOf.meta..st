compiling
noteCompilationOf: aSelector meta: isMeta

	((aSelector = #'serializedGrammar') and: [self ~~ OhmGrammarSmalltalkProxy])
		ifTrue: [	self theNonMetaClass recompile].
