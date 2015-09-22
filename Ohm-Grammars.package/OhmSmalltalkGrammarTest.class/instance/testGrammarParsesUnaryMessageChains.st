as yet unclassified
testGrammarParsesUnaryMessageChains
	
	startRule := #UnaryMessageChain.
	self 
		shouldParseAll: { 'abc' . 'abc a' . ' abc' . 'ab bc cd'};
		shouldntParseAny: { '' . '+' . '+12' . ' ab:cd:'}.