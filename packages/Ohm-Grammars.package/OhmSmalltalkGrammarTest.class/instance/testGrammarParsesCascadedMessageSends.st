tests
testGrammarParsesCascadedMessageSends
	
	startRule := #Expression.
	
	self shouldParseAll: {'2 b; a' . '2 b; a: foo' . '2 b; foo: bar + c' . 'self new test; test' . '2 + 3 printOn: a; + 100; yourself' . '2 printOn: a; + 100; yourself'}.