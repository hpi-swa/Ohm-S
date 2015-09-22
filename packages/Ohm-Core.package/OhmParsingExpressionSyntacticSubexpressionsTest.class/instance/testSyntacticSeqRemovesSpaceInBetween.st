as yet unclassified
testSyntacticSeqRemovesSpaceInBetween

	| seqExpression |
	seqExpression := OhmPExprMany newPlusOn: (OhmPExprApply newOn: 'firstRule').
	self 
		assertParsingExpression: seqExpression 
		asSyntactic: true
		compliesWithFixture: #syntacticExpressionMatch
		fromFixtureSet: #syntacticSubexpressionsPlus.