testing
testGrammarParsesBinaryMessageChains
	
	startRule := #BinaryMessageChain.
	
	self
		shouldParseAll: {'+ b' . '+= b' . '+= b foo' . '?? b foo + b' . '+ b fo fa -= x foo'};
		shouldntParseAny: {'a + b' . ''. 'b foo + a:' . '' . 'msg1: foo'}.