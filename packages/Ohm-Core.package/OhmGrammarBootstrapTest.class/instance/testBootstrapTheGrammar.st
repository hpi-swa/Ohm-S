as yet unclassified
testBootstrapTheGrammar

	| grammar result |
	result := (OhmGrammarOfOhm bootstrapOhmGrammar) match: OhmGrammarOfOhm ohmGrammarDefinition startingFrom: 'Grammar'.
	grammar := (OhmGrammarOfOhm bootstrapOhmGrammar semanticAction: OhmCompileGrammar new) value: result.

	self assert: (grammar
				doesMatch: 'G { foo = ''foo'' }' startingFrom: 'Grammar').

	self assert: (grammar doesMatch: 'G { foo = (''foo'' | ''bar'') }' startingFrom: 'Grammar').
	self assert: (grammar doesMatch: 'G { foo = (''foo'' | ''bar'')
										     bar = ''hallo'' }' startingFrom: 'Grammar').
	self assert: (grammar
				doesMatch: 'G { foo = /[A-Z]/ }' startingFrom: 'Grammar').

	self assert: (grammar
					doesMatch: 'G { foo = ''foo'' -- inlineFoo
											| ''bar'' }' startingFrom: 'Grammar').

	self assert: (grammar doesMatch: self ohmGrammarDefinition startingFrom: 'Grammar').