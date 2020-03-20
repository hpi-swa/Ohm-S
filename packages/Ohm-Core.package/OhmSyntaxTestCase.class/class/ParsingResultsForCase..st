accessing
ParsingResultsForCase: aTestCase

	^ self ParsingResults at: aTestCase ifAbsent: [self ParsingResults at: aTestCase put: Dictionary new]