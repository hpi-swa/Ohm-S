testing
testGrammarParsesObjectArrayLiterals
	
	startRule := #ArrayLiteral.
	self 
		shouldParseAll: { '{}' . '{a}' . '{a . b}' . '{2 . 3}' . '{2 negated . 3 +4}' . 
			'{''adsf'' , ''as'' . 2}' . '{ 2 . }' . '{ 2 . {}}'.
			'{ a msg: 2 + 3 negated . b + x }' };
		shouldntParseAny: { '{' . }.