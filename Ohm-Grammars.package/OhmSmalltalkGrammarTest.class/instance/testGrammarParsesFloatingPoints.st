as yet unclassified
testGrammarParsesFloatingPoints
	
	startRule := #floatingPointLiteral.
	self shouldntParseAny: {'foo' printString . '' . '.123' . '2.e-2' . '+2.123' . '-4.r1e-2'}.