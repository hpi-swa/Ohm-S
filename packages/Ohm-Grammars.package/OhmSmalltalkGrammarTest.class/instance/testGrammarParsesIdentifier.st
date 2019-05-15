tests
testGrammarParsesIdentifier
	
	startRule := #identifier.
	self
		shouldParseAll: { 'a' . 'a2' . 'aslkj123'};
		shouldntParseAny: { '2asd' . '#asd'}.