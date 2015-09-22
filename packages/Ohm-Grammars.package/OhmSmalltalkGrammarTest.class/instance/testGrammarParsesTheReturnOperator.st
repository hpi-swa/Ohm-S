as yet unclassified
testGrammarParsesTheReturnOperator
	
	startRule := #MethodReturnOperator.
	self
		shouldParseAll: { '^' . ' ^' . '    ^' };
		shouldntParseAny: { '^^' . ''}.