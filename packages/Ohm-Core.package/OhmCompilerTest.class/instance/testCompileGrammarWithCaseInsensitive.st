tests
testCompileGrammarWithCaseInsensitive

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		stringRule = caseInsensitive<"aString">
	}'.
	
	self assert: (aGrammar doesMatch: 'astring' startingFrom: #stringRule).
	self assert: (aGrammar doesMatch: 'astrInG' startingFrom: #stringRule).