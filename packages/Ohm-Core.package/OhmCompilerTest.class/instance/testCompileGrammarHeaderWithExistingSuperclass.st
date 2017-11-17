testing
testCompileGrammarHeaderWithExistingSuperclass

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarHeader: 'OhmTestingPackage.G1'.
	
	self assert: 'G1' equals: aGrammar grammarName.
	self assert: OhmBuiltInRules OhmInstance equals: aGrammar superGrammar.
	self assert: (OhmNamespace named: 'OhmTestingPackage') equals: aGrammar namespace.