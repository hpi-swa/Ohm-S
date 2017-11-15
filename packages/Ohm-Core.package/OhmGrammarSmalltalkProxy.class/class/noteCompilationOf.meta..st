compiling
noteCompilationOf: aSelector meta: isMeta

	(aSelector = #'serializedGrammar')
		ifTrue: [	self theNonMetaClass recompile].