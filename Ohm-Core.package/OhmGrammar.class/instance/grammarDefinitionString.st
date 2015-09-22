converting
grammarDefinitionString

	^ (self grammarDefinitionAsString , ' {' , 
		(((self rules sorted: [:a :b | a ruleName < b ruleName]) 
			select: [:r | r isInlineRule not]) 
				inject: '' 
				into: [ :rules :rule | 
					rules withoutTrailingBlanks
					, Character cr , Character cr
					, (rule textualRepresentation ifNil: [ '' ]) ]) withoutTrailingBlanks
	, '}')