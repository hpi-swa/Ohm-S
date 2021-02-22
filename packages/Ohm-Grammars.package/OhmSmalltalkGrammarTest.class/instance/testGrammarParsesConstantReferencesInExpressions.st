tests
testGrammarParsesConstantReferencesInExpressions
	
	startRule := #Expression.
	self shouldParse: 'nil+3' to: #(
			Expression 
				(Operand (Literal 'nil'))
				(MessageChain '+3')
				(_list))
