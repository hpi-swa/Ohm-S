testing
testGrammarParsesCascadedMessages
	
	startRule := #CascadedMessage.
	
	self 
		shouldParseAll: {';a' . ';a: foo' . '; foo: bar + c'};
		shouldntParseAny: {'msg1' . ''. '; msg;' }.