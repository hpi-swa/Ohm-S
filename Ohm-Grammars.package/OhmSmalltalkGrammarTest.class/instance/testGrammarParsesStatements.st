as yet unclassified
testGrammarParsesStatements
	
	startRule := #Statement.
	
	self 
		shouldParseAll: 
		{'a + b' . '123' . 'a foo: b + c negated' . 'a := b' . 
		  'a := b + c' . 'a := 123' . 'a := a foo: b bar: c + d'};
		shouldntParse: {'a :=' . ''}.