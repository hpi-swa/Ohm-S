as yet unclassified
testDuplicateActionsAreNotAllowed

	| g |
	g := OhmGrammar makeGrammar: 'G {
          foo = bar baz
          bar = ''a''
          baz = ''b'' }'.

	self should: [g assertNoDuplicateActions: OhmAttributeGenerationTestDuplicateAttribute]
		raise: OhmDuplicateActionDeclarationError.