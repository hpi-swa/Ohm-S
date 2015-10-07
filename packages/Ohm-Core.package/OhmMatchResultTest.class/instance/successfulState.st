as yet unclassified
successfulState

	| s |
	s := OhmParsingState new.
	s grammar: OhmGrammar new.
	s pushBindings: {
		OhmNode newNamed: #foo forGrammar: s grammar andInput: (OhmInputStream newOn: 'abc') startedAt: '1' }.
	^ s