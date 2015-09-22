converting
grammarDefinitionAsString

	^ 
	self qualifiedGrammarName
	, (self superGrammar == OhmBaseGrammar 
			ifFalse: [	' <: '
						, self superGrammar qualifiedGrammarName 
						, ''] 
			ifTrue: [''])