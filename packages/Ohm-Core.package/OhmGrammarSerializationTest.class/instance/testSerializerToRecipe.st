testing
testSerializerToRecipe

	| g g2 recipe |

	g := OhmCompiler compileGrammarDefinition: 'G {
		foo = "f"
	}'.

	recipe := g toRecipe.
	g2 := (Compiler evaluate: recipe) value.
	self should: g2 ruleDeclarations size = 1.
	self shouldnt: (g2 match: 'f') = false.