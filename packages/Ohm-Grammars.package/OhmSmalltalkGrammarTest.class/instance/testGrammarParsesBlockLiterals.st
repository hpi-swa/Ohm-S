testing
testGrammarParsesBlockLiterals
	
	startRule := #BlockLiteral.
	self 
		shouldParseAll: { '[]' . '[:a | ]' . '[:a :b :c| ]' . '[:Ak2 :blks|]' };
		shouldntParseAny: { '[|]' . '[:a || ]' . '[:a ]' . '[:2a | ]' }.