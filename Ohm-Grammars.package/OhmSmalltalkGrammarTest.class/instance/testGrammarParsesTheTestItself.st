as yet unclassified
testGrammarParsesTheTestItself
	
	startRule := #MethodDeclaration.
	self shouldParse: thisContext method getSource.