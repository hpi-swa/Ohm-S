accessing
superGrammarsIncludingSelf

	self superGrammar = self
		ifTrue: [ ^ { self } ]
		ifFalse: [ ^ { self } , self superGrammar superGrammarsIncludingSelf ]