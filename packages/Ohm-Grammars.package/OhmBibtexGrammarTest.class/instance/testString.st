as yet unclassified
testString

	startRule := #BibtexDB.

	self shouldParse: '@string{foo = {a}}
@misc{x, title = foo # "b" # foo # 2}'