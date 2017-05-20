testing
testCompileRulesAndInstallsInlineRules

	OhmCompiler compileRule: '
aRule = 
	"foo" --fooCase
	| "bar" --barCase' forGrammar: testGrammar.
	
	self assert: 3 equals: testGrammar ruleDeclarations size.
	self assert: 3 equals: testGrammar rules size.
	
	self assert: (testGrammar ruleDeclarations keys includes: 'aRule').