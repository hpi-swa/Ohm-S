tests
testGrammarParsesConstantReferencesNotVariables

	startRule := #Operand.
	self 
		shouldParse: 'false' to: #(Operand (Literal (constantReference 'false')));
		shouldParse: 'nil' to: #(Operand (Literal (constantReference 'nil')));
		shouldParse: 'true' to: #(Operand (Literal (constantReference 'true')))