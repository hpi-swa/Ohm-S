as yet unclassified
testBindingsAreEvaluatedLazily

	| g action result |
	g := OhmGrammar makeGrammar: 'G {
          foo = bar baz
          bar = ''a''
          baz = ''b'' }'.

	action := g semanticAction: OhmAttributeGenerationTestSimpleSemanticAction new.

	result := action value: (g matchContents: 'ab' startingFrom: 'foo').
	self assert: (result first) equals: 1.
	self assert: (result second) equals: 0.