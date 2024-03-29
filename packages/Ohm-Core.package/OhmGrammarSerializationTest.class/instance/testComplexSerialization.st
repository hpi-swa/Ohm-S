tests
testComplexSerialization
	
	| g description |

	g := OhmCompiler compileGrammarDefinition: 'G {
		foo = "f"
		Bar = foo | foobaz
		foobaz =
			"foo" "baz" --one
			| "foobaz" --two
	}'.

	description := 'G <: BuiltInRules {
Bar = foo | foobaz

foo = "f"

foobaz =
			"foo" "baz" --one
			| "foobaz" --two}'.
	self assert: description equals: g grammarDefinitionString.