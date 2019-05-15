tests
testSimpleString

	startRule := #BibtexDB.

	self shouldParse: '@string{foo = {a}}'. 