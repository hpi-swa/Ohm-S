tests
testSemanticActionsHaveToHaveMatchingArities

	| testBlock |
	testBlock := [ self fixtureGrammar semanticAction: OhmAttributeGenerationTestAttribute new ].

	self wrongSetUp.
	
	self should: testBlock
		raise: OhmAttributeAritiesMissmatchError. 

	self setUp.

	self shouldnt: testBlock
		raise: OhmAttributeAritiesMissmatchError.