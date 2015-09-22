as yet unclassified
testSimpleSerialization

	| g description |

	g := OhmCompiler compileGrammarDefinition: 'G {
		foo = ''f''
	}'.

	description := 'G <: BaseGrammar {

foo = ''f''}'.
	self assert: description equals: g grammarDefinitionString.