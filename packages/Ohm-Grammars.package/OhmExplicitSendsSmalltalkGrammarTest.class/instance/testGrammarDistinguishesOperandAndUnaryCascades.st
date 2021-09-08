tests
testGrammarDistinguishesOperandAndUnaryCascades
	
	startRule := #Expression.
	self 
		shouldParse: 'self new test; test' to: #(
			Expression
				(Expression_unaryCascade
					(UnaryMessageReceiver 'self new')
					(CascadedMessages 'test; test')))