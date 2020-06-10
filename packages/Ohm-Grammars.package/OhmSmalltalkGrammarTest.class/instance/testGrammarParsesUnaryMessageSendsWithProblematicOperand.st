tests
testGrammarParsesUnaryMessageSendsWithProblematicOperand
	
	startRule := #Expression.
	self 
		shouldParse: '2negated' to: #(Expression (Operand '2') (MessageChain 'negated') (CascadedMessage (nil)));
		shouldParse: 'falseNegated' to: #(Expression (Operand 'falseNegated'))