testing
testDuplicateActionsAreNotAllowed

	| g |
	g := OhmGrammar new: 'G {
          foo = bar baz
          bar = "a"
          baz = "b" }'.

	self should: [g assertNoDuplicateActions: OhmAttributeGenerationTestDuplicateAttribute]
		raise: OhmDuplicateActionDeclarationError.