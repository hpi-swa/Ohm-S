accessing
ParsingResults

	^ ParsingResults
		ifNil: [ParsingResults := Dictionary new]