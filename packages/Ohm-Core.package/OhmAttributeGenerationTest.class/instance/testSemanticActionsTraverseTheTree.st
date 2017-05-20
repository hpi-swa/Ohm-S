testing
testSemanticActionsTraverseTheTree

	| result testActions |
	testActions := self fixtureGrammar semanticAction: OhmAttributeGenerationTestAttribute new.
	result := self fixtureGrammar match: 'foobar' startingFrom: #bar.
	result := testActions value: result.

	self assert: result first equals: #bar.
	self assert: result second first equals: #foo.