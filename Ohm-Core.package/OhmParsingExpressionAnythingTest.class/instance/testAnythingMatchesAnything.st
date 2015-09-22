as yet unclassified
testAnythingMatchesAnything

	| anything |
	anything := OhmPExprAnything new.
	self 
		assertParsingExpression: anything 
		compliesWithItsFixture: #matchContents.