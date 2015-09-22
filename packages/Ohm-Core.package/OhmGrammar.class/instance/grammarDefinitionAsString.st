converting
grammarDefinitionAsString

	^ 
	self grammarName
	, (self superGrammar == OhmBaseGrammar 
			ifFalse: [	' <: '
						, self superGrammar grammarName 
						, ''] 
			ifTrue: [''])