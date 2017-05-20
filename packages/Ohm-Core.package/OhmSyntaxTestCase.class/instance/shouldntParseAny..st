asserting
shouldntParseAny: aCollectionOfStrings

	aCollectionOfStrings do: [:input | 
		self shouldntParse: input]