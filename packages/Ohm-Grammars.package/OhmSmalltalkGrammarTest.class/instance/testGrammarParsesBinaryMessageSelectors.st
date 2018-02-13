testing
testGrammarParsesBinaryMessageSelectors
	
	startRule := #binaryMessageSelector.
	self 
		shouldParseAll: { '+' . '-' . '=' . '?' . '?!' . '@?' . '*!' . '==>' };
		shouldntParseAny: { '*a' . '' . 'aa' . 'a*' . 'a:' . ':a' . '+ +'}.
