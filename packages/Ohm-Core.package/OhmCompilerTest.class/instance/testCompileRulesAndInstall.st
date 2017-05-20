as yet unclassified
testCompileRulesAndInstall

	OhmCompiler compileRule: 'aRule = number "+" aRule' forGrammar: testGrammar.
	
	self assert: 1 equals: testGrammar ruleDeclarations size.
	self assert: 1 equals: testGrammar rules size.
	
	self assert: testGrammar ruleDeclarations associations first key equals: 'aRule'.
	self assert: testGrammar rules associations first key equals: 'aRule'.