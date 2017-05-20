testing
testBuilderBuildGrammar

	| grammar |
	grammar := b buildGrammar.
	self assert: '' equals: grammar grammarName.