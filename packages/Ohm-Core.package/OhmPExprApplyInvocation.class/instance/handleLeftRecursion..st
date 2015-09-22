leftRecursion
handleLeftRecursion: seed

	| result |
	result := self growTheSeed: seed.
	self memoizeLeftRecursionResult: result.
	self positionInfo endLeftRecursion.
	^ result