testing
testCompileGrammarWithExistingSuperclass

	| aSuperGrammar aGrammar |
	aSuperGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G0 {
		base = "foo"
	}'.
	OhmCompiler installGrammar: aSuperGrammar.
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 <: OhmTestingPackage.G0 {
		expr = number "+" number
		number = digit*
	}'.
	
	
	self assert: 'G1' equals: aGrammar grammarName.
	self assert: aSuperGrammar equals: aGrammar superGrammar.
	self assert: (aGrammar ruleDeclarations at: #expr) body equals: (aGrammar ruleNamed: #expr).
	self assert: (OhmNamespace named: 'OhmTestingPackage') equals: aGrammar namespace.