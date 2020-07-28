tests
testGrammarDistinguishesOperandAndUnaryCascades
	
	startRule := #Expression.
	self 
		shouldParse: 'self new test; test' to: #(
			Expression
				(Expression_unaryCascade
					(UnaryMessageSend 'self new')
					(CascadedMessages 'test; test')))