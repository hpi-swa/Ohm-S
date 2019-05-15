tests
testCompileGrammarWithApplyWithArgs

	| aGrammar |
	aGrammar := OhmCompiler compileGrammarDefinition: 'OhmTestingPackage.G1 {
		FirstRule<A> = A A
		YetAnotherRule<B> = FirstRule<"->" B>
		AnotherRule = YetAnotherRule<digit>
	}'.
	
	self assert: (aGrammar doesMatch: '-> 2 -> 2' startingFrom: #AnotherRule).
	self assert: (aGrammar doesMatch: '-> 1 -> 1' startingFrom: #AnotherRule).
	
	self assert: (aGrammar doesMatch: '1' startingFrom: #AnotherRule) not.
	