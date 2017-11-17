converting
grammarDefinitionAsString

	^ self grammarName
		, (self superGrammar == OhmBuiltIn 
				ifFalse: [' <: ' , self superGrammar grammarName] 
				ifTrue: [''])