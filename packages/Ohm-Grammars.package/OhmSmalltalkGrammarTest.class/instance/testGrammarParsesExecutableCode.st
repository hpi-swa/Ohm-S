tests
testGrammarParsesExecutableCode
	
	startRule := #ExecutableCode.
	
	self 
		shouldParseAll: {'|a b| a := 1. b := 2. a + b'. 'self assert: [:a | a msg: arg1]'};
		shouldntParseAny: {'| a' . 'a := 1 b := 2'}.