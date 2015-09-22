accessing
allSubGrammars

	^ ((OhmGrammarSmalltalkProxy allInstances 
			collect: [:p | p OhmInstance]
		 	thenSelect: [:g | g superGrammar = self])
			gather: [:g | g allSubGrammars ])  asSet