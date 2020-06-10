tests
testGrammarParsesVariableNameCorrectly
	
	startRule := #Operand.
	self 
		shouldParse: 'falseVar' to: #(Operand #(Reference #(identifier 'falseVar')));
		shouldParse: 'trueVar' to: #(Operand #(Reference #(identifier 'trueVar')));
		shouldntParse: '2var'