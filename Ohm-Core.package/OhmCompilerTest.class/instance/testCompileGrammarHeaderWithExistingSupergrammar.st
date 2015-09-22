as yet unclassified
testCompileGrammarHeaderWithExistingSupergrammar

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarHeader: 'OhmTestingPackage.G1 <: Ohm'.
	
	self assert: 'G1' equals: aGrammar grammarName.
	self assert: OhmGrammarOfOhm OhmInstance equals: aGrammar superGrammar.
	self assert: (OhmNamespace named: 'OhmTestingPackage') equals: aGrammar namespace.