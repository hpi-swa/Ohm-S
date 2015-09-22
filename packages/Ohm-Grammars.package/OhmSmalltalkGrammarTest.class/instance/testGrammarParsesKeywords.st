as yet unclassified
testGrammarParsesKeywords
	
	startRule := #keyword.
	self 
		shouldParseAll: { 'a:' . 'a2:' . 'aslkj123:' . 'self:' . 'super:'};
		shouldntParseAny: { '2asd' . '#asd' . 'a' . 'ab' . 'as:b'}.