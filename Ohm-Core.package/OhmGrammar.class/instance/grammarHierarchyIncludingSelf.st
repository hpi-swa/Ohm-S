accessing
grammarHierarchyIncludingSelf
	| r|
	r:= (self superGrammarsIncludingSelf , 
		((OhmGrammarSmalltalkProxy allSubclasses 
			collect: [:p | p OhmInstance]
		 	thenSelect: [:g | g ~= self and: [g superGrammar = self]])
			gather: [:g | {g allSubGrammars . {g}} gather: [:i | i] ])   ) asSet.
	
	^ r.