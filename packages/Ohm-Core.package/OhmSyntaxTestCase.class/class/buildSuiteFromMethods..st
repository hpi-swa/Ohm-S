building suites
buildSuiteFromMethods: methods
	
	(self ParsingResultsForCase: self) removeAll.
 	^ super buildSuiteFromMethods: methods