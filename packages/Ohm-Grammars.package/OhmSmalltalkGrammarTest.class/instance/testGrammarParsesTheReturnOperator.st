tests
testGrammarParsesTheReturnOperator
	
	startRule := #MethodReturnOperator.
	self
		shouldParseAll: { '^' . ' ^' . '    ^' };
		shouldntParseAny: { '^^' . ''}.