accessing
skippedSpacesString
	"This is calculated on demand as most semantics don't need it.
	This is work in progress!"
	
	| spacesInterval ownSourceMapDepth reversedMap enclosingRule reversePosition previousNodeIntervalEnd |
	ownSourceMapDepth := (self sourceMap at: self interval start) size.
	reversedMap := self sourceMap reversed.
	enclosingRule := self enclosingRule.
	reversePosition := [:originalPosition | (reversedMap size - originalPosition) + 1].
	
	previousNodeIntervalEnd := reversedMap 
		findFirst: [:nodes | nodes last ~~ enclosingRule] 
		startingAt: (reversePosition value: self interval start) + 1.
	previousNodeIntervalEnd := reversePosition value: previousNodeIntervalEnd.
	spacesInterval := previousNodeIntervalEnd + 1 to: self interval start - 1.
	
	"The following is a hack as we should not access the stream"
	^ self interval stream contents 
		copyFrom: spacesInterval start
		to: spacesInterval stop