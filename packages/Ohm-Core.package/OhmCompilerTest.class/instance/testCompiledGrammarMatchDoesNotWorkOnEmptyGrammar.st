tests
testCompiledGrammarMatchDoesNotWorkOnEmptyGrammar

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
	}'.
	
	self should: [aGrammar match: '2 + 2'] raise: OhmMissingStartRule.