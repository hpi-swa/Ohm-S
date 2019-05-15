tests
testSimpleSerialization

	| g description |

	g := OhmCompiler compileGrammarDefinition: 'G {
		foo = "f"
	}'.

	description := 'G <: BuiltInRules {

foo = "f"}'.
	self assert: description equals: g grammarDefinitionString.