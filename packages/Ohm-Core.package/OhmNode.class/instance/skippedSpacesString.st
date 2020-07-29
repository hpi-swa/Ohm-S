accessing
skippedSpacesString
	"This is calculated on demand as most semantics don't need it."
	
	| spacesInterval ownSourceMapDepth reversedMap enclosingRule reversePosition previousNodeIntervalEnd searchArea reversedOwnIntervalStart |
	ownSourceMapDepth := (self sourceMap at: self interval start) size.
	reversedMap := self sourceMap reversed.
	enclosingRule := self enclosingRule.
	reversePosition := [:originalPosition | (reversedMap size - originalPosition) + 1].
	
	"The following should be refactored as soon as #findFirst:startingAt: is available or
	even better #findLast:upTo: --pre"
	reversedOwnIntervalStart := reversePosition value: self interval start.
	searchArea := reversedMap copyFrom: reversedOwnIntervalStart + 1 to: reversedMap size.
	previousNodeIntervalEnd := reversedOwnIntervalStart + (searchArea findFirst: [:nodes | nodes last ~~ enclosingRule]).
	previousNodeIntervalEnd := reversePosition value: previousNodeIntervalEnd.
	spacesInterval := previousNodeIntervalEnd + 1 to: self interval start - 1.
	
	"The following is a hack as we should not access the stream directly"
	^ self interval stream contents 
		copyFrom: spacesInterval start
		to: spacesInterval stop