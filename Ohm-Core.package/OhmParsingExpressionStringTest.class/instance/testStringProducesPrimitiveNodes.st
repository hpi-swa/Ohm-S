as yet unclassified
testStringProducesPrimitiveNodes

	| stringExpression |
	stringExpression := OhmPExprString newOn: 'foo'.
	self 
		assertParsingExpression: stringExpression
		compliesWithItsNodeFixture: #matchTree.