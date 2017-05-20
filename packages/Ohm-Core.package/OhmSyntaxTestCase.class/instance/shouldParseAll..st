asserting
shouldParseAll: collectionOfStrings

	collectionOfStrings do: [:input | 
		self shouldParse: input]
	