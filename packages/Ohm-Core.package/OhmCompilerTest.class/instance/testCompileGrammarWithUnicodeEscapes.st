testing
testCompileGrammarWithUnicodeEscapes

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		pi = "\u03C0"
		ae = "\xE4"
	}'.
	
	self assert: (aGrammar doesMatch: (Unicode value: 16r03C0) asString startingFrom: #pi).
	self assert: (aGrammar doesMatch: 'ä' startingFrom: #ae).