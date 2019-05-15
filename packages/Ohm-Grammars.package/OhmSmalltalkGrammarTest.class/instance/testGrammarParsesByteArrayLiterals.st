tests
testGrammarParsesByteArrayLiterals
	
	startRule := #ArrayLiteral.
	self 
		shouldParseAll: { '#[]' . '#[1]' . '#[1 2]' . '#[200 250]' };
		shouldntParseAny: { '#[a]' . '#[2 . 3]' . '#[' }.