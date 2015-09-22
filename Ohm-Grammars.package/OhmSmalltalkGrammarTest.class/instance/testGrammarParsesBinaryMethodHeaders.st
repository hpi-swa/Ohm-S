as yet unclassified
testGrammarParsesBinaryMethodHeaders
	
	startRule := #BinaryMethodHeader.
	self 
		shouldParseAll:	{'+ anArgument' . '+- b' . '// Argument2' . '+a' };
		shouldntParseAny: {'+' . ''. 'message:' }.