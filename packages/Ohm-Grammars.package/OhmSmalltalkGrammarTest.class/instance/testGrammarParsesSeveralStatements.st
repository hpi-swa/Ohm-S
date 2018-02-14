testing
testGrammarParsesSeveralStatements
	
	startRule := #Statements.
	
	self 
		shouldParseAll: 
		{'"comment".' . 'a + b. a.'};
		shouldntParse: {'^' . '^ a' . ' a+ b'}.