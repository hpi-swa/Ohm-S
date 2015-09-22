compiling
compileAndInstallGrammarHeader: textualRepresentation

	| grammar |
	
	grammar := self compileGrammarHeader: textualRepresentation.
	
	self initializeSmalltalkClassFor: grammar.  
	
	^ grammar