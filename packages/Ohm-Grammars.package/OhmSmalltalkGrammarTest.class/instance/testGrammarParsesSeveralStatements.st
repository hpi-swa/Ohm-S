tests
testGrammarParsesSeveralStatements
	
	startRule := #Statements.
	
	self 
		shouldParseAll: {'"comment".' . 'a + b. a.'};
		shouldntParseAny: {'^' . '^ a' . ' a+ b'}.