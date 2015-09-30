as yet unclassified
testCompiledGrammarHasAStartRule

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		expr = number ''+'' number
		number = digit*
	}'.
	
	self assert: 'expr' equals: aGrammar defaultStartRuleName.
	self shouldnt: (aGrammar match: '2+2') = false.
	self shouldnt: (aGrammar match: '2').