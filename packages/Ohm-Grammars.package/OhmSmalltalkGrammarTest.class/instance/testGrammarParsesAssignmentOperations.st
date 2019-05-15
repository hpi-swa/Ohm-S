tests
testGrammarParsesAssignmentOperations
	
	startRule := #AssignmentOperation.

	self 
		shouldParseAll: { 'a :=' . 'abc :=' . 'a231 :=' . 'abc    :=' . 'abc', Character cr,':=' };
		shouldntParseAny: { 'self  :=' . 'nil :=' . 'super :=' . ':='}.