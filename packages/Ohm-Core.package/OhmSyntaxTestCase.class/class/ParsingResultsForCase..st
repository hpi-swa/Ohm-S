accessing
ParsingResultsForCase: aTestCase
	
	^ self ParsingResults 
		at: aTestCase 
		ifAbsentPut: [Dictionary new]