tests
testGrammarParsesConstantReferences
	
	startRule := #constantReference.
	self 
		shouldParse: 'true' to: #(constantReference 'true');
		shouldParse: 'false' to: #(constantReference 'false');
		shouldParse: 'nil' to: #(constantReference 'nil')