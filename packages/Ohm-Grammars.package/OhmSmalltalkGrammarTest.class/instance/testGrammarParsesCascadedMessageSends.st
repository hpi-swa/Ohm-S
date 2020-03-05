tests
testGrammarParsesCascadedMessageSends
	
	startRule := #Expression.
	
	self shouldParseAll: {'2 b; a' . '2 b; a: foo' . '2 b; foo: bar + c'}.