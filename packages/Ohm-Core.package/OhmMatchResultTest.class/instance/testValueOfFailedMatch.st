testing
testValueOfFailedMatch
	| r |
	r := OhmFailedMatchResult new: self successfulState.
	self should: [OhmAttributes new value: r]
		raise: OhmMissingAttributeMethod.