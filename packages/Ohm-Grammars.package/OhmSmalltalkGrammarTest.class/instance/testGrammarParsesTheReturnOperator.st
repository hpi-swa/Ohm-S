testing
testGrammarParsesTheReturnOperator
	
	startRule := #MethodReturnOperator.
	self
		shouldParseAll: { '^' . ' ^' . '    ^' };
		shouldntParseAny: { '^^' . ''}.