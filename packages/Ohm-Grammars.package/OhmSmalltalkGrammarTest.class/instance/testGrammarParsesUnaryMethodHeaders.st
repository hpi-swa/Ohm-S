as yet unclassified
testGrammarParsesUnaryMethodHeaders
	
	startRule := #UnaryMethodHeader.
	self 
		shouldParseAll: {'message' . 'aMessage' . 'AMessage' . 'Message2'};
		shouldntParseAny: {'2message' . ''. 'message:' . 'message:message:'}.