testing
testGrammarParsesBindableIdentifier
	
	startRule := #bindableIdentifier.
	self 
		shouldParseAll: { 'a' . 'a2' . 'aslkj123' . 'superArgument' . 'nilOrValue'};
		shouldntParseAny: { 'self ' . 'self ' . 'super ' . 'nil	' . 'false '}.