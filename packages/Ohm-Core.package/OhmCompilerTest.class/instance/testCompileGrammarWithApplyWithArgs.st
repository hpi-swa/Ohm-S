testing
testCompileGrammarWithApplyWithArgs

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		FirstRule<A> = A A
		AnotherRule = FirstRule<digit>
	}'.
	
	self assert: (aGrammar doesMatch: '2 2' startingFrom: #AnotherRule).
	self assert: (aGrammar doesMatch: '1 1' startingFrom: #AnotherRule).
	
	self assert: (aGrammar doesMatch: '1' startingFrom: #AnotherRule) not.
	