testing
testGrammarParsesMethodDeclarations
	
	startRule := #MethodDeclaration.
	self shouldParseAll: { 'initializeToolbar
	"foobar"
	self
		initializeToolbarObjects.' .
	'foo
		^ "a"2"m stretch" + "a"5"mm stretch2"' .
	'aber: foo
		| a b |
		''asdf''"123s"'.
	'foo: aber
		";"
		^ 2 + 1' }