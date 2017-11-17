converting
grammarDefinitionAsString

	^ self grammarName
		, (self superGrammar == OhmBuiltInRules 
				ifFalse: [' <: ' , self superGrammar grammarName] 
				ifTrue: [''])