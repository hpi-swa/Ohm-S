as yet unclassified
testAnythingProducesIntervals

	| anything |
	anything := OhmPExprAnything new.
	self 
		assertParsingExpression: anything 
		compliesWithItsIntervalFixture: #matchInterval.