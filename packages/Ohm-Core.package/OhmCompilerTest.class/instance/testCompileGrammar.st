testing
testCompileGrammar

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		expr = number "+" number
		number = digit*
	}'.
	
	self assert: 'G1' equals: aGrammar grammarName.
	self assert: OhmBuiltIn OhmInstance equals: aGrammar superGrammar.
	self 
		assert: (aGrammar ruleDeclarations at: #expr) body 
		equals: (aGrammar ruleNamed: #expr).
	self 
		assert: (OhmNamespace named: 'OhmTestingPackage') 
		equals: aGrammar namespace.