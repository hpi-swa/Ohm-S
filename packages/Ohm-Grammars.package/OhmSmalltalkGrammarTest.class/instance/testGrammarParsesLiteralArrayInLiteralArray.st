testing
testGrammarParsesLiteralArrayInLiteralArray
	
	startRule := #LiteralArrayLiteral.
	self
		shouldParseAll: { '#(#(''self foo. + 3'' 11) #(''#('' 3) #(''self 0'' 6) #(''self asdf;;asfd'' 11)) '. '#(a (a b))' }.