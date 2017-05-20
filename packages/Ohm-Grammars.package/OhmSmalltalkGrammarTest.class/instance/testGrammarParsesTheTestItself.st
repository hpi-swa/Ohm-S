testing
testGrammarParsesTheTestItself
	
	startRule := #MethodDeclaration.
	self shouldParse: thisContext method getSource.