as yet unclassified
testCompileAndInstallGrammarHeader

	| aGrammar resultingSmalltalkProxy |
	aGrammar := OhmCompiler compileAndInstallGrammarHeader: 'OhmTestingPackage.G1'.
	
	self assert: 'G1' equals: aGrammar grammarName.
	self assert: OhmBaseGrammar OhmInstance equals: aGrammar superGrammar.
	
	resultingSmalltalkProxy := 
		(OhmNamespace named: 'OhmTestingPackage') classes first.
	self assert: resultingSmalltalkProxy 
		equals: aGrammar smalltalkPlaceholder.