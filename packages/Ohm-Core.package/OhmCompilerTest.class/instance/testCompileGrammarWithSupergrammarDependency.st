testing
testCompileGrammarWithSupergrammarDependency

	| aGrammar aSuperGrammar createdGrammar |
	aSuperGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G2 {
		ident = character alphanum*
	}'.
	OhmCompiler installGrammar: aSuperGrammar.
	aSuperGrammar smalltalkPlaceholder OhmInstance: nil. "To create the state after monticello checkout"  

	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 <: OhmTestingPackage.G2 {
		expr = number "+" number
		number = digit*
	}'.
	OhmCompiler installGrammar: aGrammar.
	aGrammar smalltalkPlaceholder OhmInstance: nil.
	
	createdGrammar := aGrammar smalltalkPlaceholder OhmInstance.
	
	self assert: 'G1' equals: createdGrammar grammarName.
	self assert: aSuperGrammar smalltalkPlaceholder OhmInstance equals: createdGrammar superGrammar.
	self assert: (createdGrammar ruleDeclarations at: #expr) body equals: (createdGrammar ruleNamed: #expr).
	self assert: (OhmNamespace named: 'OhmTestingPackage') equals: createdGrammar namespace.