accessing
storeSyntaxTestResult: aResult for: testSelector
	
	| caseResults |
	self shouldStoreTestParseResults ifTrue: [
		caseResults := self ParsingResultsForCase: self.
		(caseResults at: testSelector ifAbsentPut: [OrderedCollection new])
			add: aResult]