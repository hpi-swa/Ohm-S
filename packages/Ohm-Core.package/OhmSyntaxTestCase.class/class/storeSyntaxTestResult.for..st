as yet unclassified
storeSyntaxTestResult: aResult for: testSelector

	| caseResults |
	caseResults := self ParsingResultsForCase: self.
	(caseResults at: testSelector ifAbsentPut: [OrderedCollection new])
		add: aResult
	