testing
testCompileGrammarWithEscapes

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		backslash = "a\\b"
		dquote = "a\"b"
		squote = "a\''b"
		newline = "a\nb"
		tab = "a\tb"
	}'.
	
	self assert: (aGrammar doesMatch: 'a\b' startingFrom: #backslash).
	self assert: (aGrammar doesMatch: 'a"b' startingFrom: #dquote).
	self assert: (aGrammar doesMatch: 'a''b' startingFrom: #squote).
	
	self assert: (aGrammar doesMatch: 'a
b' startingFrom: #newline).
	
	self assert: (aGrammar doesMatch: 'a	b' startingFrom: #tab).
	