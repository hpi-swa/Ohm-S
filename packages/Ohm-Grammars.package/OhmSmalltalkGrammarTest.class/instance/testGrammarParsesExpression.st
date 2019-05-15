tests
testGrammarParsesExpression
	
	startRule := #Expression.
	
	self shouldParseAll: 
		{'a msg1: foo' . 'b foo msg2: foo' . 'a + b msg1: foo msg2: bar' . 
              'a msg1: a1 + foo bar msg2: a2 msg3: a3' . 'a' .
		  'a foo: bar; bar: foo + a msg' . 'oper' . '123'. 'string' printString};
		shouldntParseAny:
		{'msg1:' . ''. '+ b' . 'a foo;' . 'a msg: arg;'}.