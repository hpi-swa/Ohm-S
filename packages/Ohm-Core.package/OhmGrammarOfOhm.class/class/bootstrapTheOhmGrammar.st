as yet unclassified
bootstrapTheOhmGrammar 

	| cst |
	cst := self bootstrapOhmGrammar matchContents: self ohmGrammarDefinition startingFrom: #Grammar failureAsException: true.
	OhmInstance := (self bootstrapOhmGrammar semanticAction: OhmCompileGrammar new) value: cst.
	OhmInstance smalltalkPlaceholder: self.
	^ OhmInstance