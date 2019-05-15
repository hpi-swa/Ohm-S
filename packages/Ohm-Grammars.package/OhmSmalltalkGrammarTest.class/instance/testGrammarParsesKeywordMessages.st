tests
testGrammarParsesKeywordMessages
	
	startRule := #KeywordMessage.
	
	self 
		shouldParseAll: 
		{'foo: arg1' . 'foo: arg1 bar: arg2' . 'foo: arg1 + arg2 bar: arg3' . 
              'foo: arg1 neg + arg2 neg bar: arg3' . 'foo2: arg2' };
		shouldntParseAny: {'foo' . 'foo + 2' . 'foo:' . ''}.