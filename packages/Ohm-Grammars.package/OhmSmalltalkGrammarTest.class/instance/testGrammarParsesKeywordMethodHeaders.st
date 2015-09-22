as yet unclassified
testGrammarParsesKeywordMethodHeaders
	
	startRule := #KeywordMethodHeader.
	self 
		shouldParseAll: 
			{'msg1: foo' . 'msg2: foo' . 'msg1: foo msg2: bar' . 
           		   'msg1: a1 msg2: a2 msg3: a3' . 'superOther: foo othersuper: bar' . 'msg1: superArgument' };
		shouldntParseAny: 
			{'msg1' . ''. 'msg1:' . 'msg1::' . 'msg1:msg2:' . 'msg1: foo msg2'}.