tests
testCompileRulesAndInstall

	OhmCompiler compileRule: 'aRule = number "+" aRule' forGrammar: testGrammar.
	OhmCompiler compileRule: 'anotherRule = "0".."9"' forGrammar: testGrammar.
	
	self assert: 2 equals: testGrammar ruleDeclarations size.
	self assert: 2 equals: testGrammar rules size.
	
	self assert: (testGrammar ruleDeclarations keys includes: 'aRule').
	self assert: (testGrammar rules keys includes: 'aRule').