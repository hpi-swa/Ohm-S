converting
grammarDefinitionString
	
	^ String streamContents: [:stream |
		stream << self grammarDefinitionAsString.
		stream << ' {'; cr.
		((self rules sorted: [:a :b | a ruleName < b ruleName])
			select: [:r | r isInlineRule not])
			do: [:rule | stream << rule textualRepresentation withBlanksTrimmed]
			separatedBy: [stream cr; cr].
		stream << '}' ]