tests
testGrammarParsesUnaryMessageSendsWithProblematicOperand
	
	startRule := #Expression.
	self 
		shouldParse: '2negated' to: #(Expression 
			#(KeywordMessageSend 
				#(KeywordMessageReceiver 
					#(BinaryMessageSend 
						#(BinaryMessageReceiver 
							#(UnaryMessageSend 
								#(UnaryMessageSend_message 
									#(UnaryMessageReceiver #(Operand '2'))
									#(UnaryMessage 'negated'))))))
					#(_list)));
		shouldParse: 'falseNegated' to: #(Expression 
			#(KeywordMessageSend 
				#(KeywordMessageReceiver 
					#(BinaryMessageSend 
						#(BinaryMessageReceiver 
							#(UnaryMessageSend 
								#(UnaryMessageSend_base 
									#(Operand 'falseNegated'))))))
					#(_list)))
		
	