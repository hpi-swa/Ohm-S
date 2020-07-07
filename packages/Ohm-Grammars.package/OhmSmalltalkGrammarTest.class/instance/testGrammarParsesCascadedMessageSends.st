tests
testGrammarParsesCascadedMessageSends
	
	startRule := #Expression.
	
	self 
		shouldParseAll: {'self negated firstMessage; anotherMessage: 2 negated; yourself'}