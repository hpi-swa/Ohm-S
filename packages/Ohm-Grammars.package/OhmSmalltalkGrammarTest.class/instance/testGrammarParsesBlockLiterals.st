testing
testGrammarParsesBlockLiterals
	
	startRule := #BlockLiteral.
	self 
		shouldParseAll: { '[]' . '[:a | ]' . '[:a :b :c| ]' . '[:Ak2 :blks|]' . '[: a : b : c| ]' };
		shouldntParseAny: { '[|]' . '[:a || ]' . '[:a ]' . '[:2a | ]' }.