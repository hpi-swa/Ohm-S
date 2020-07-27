tests
testGrammarDistinguishesOperandAndBinaryCascades
	
	startRule := #Expression.
	self 
		shouldParse: '1 + 2 negated; negated' to: #(
			Expression
				(Expression_operandCascade
					(Operand '1')
					(CascadedMessages '+ 2 negated; negated')))