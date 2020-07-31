tests
testManyInSyntacticRule

	b := OhmGrammarBuilder new.
	b setGrammarName: 'TestGrammar'.
	b addRule: #RuleOne as: (b star: (b apply: 'identifier')).
	b addRule: #identifier as: (b plus: (b string: 'a')).
	self 
		assertGrammar: b buildGrammar 
		startingFrom: #RuleOne
		compliesWithFixture: #matchContents
		fromFixtureSet: #starSyntacticWithApply