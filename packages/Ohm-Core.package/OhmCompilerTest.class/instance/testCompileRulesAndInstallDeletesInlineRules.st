as yet unclassified
testCompileRulesAndInstallDeletesInlineRules

	| oldRules |

	OhmCompiler compileRule: '
aRule = 
	"foo" --fooCase
	| "bar" --barCase' forGrammar: testGrammar.
	oldRules := testGrammar rules.

	OhmCompiler compileRule: '
aRule = 
	"foo" --fooCase2
	| "bar" --barCase2' forGrammar: testGrammar.

	self assert: 3 equals: testGrammar ruleDeclarations size.
	self assert: 3 equals: testGrammar rules size.

	self assert: (testGrammar rules keys includes: 'aRule_fooCase') not.
	self assert: (testGrammar rules keys includes: 'aRule_barCase') not.

	self assert: (testGrammar rules keys includes: 'aRule_barCase2').
	self assert: (testGrammar rules keys includes: 'aRule_fooCase2').