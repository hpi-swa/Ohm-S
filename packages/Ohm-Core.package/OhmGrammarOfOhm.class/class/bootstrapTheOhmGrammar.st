as yet unclassified
bootstrapTheOhmGrammar 

	| cst |
	cst := self bootstrapOhmGrammar match: self ohmGrammarDefinition startingFrom: #Grammar.
	OhmInstance := (self bootstrapOhmGrammar semanticAction: OhmCompileGrammar new) value: cst.
	OhmInstance smalltalkPlaceholder: self.
	^ OhmInstance