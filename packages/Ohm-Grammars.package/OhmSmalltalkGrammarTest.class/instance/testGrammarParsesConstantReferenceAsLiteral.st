tests
testGrammarParsesConstantReferenceAsLiteral
	
	startRule := #Literal.
	self 
		shouldParse: 'true' to: #(Literal (constantReference 'true'));
		shouldParse: 'false' to: #(Literal (constantReference 'false'));
		shouldParse: 'nil' to: #(Literal (constantReference 'nil'))