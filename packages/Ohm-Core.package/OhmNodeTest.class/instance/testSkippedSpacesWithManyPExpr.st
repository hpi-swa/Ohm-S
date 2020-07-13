running
testSkippedSpacesWithManyPExpr
	
	| result |
	grammar := OhmGrammar new: 'OhmNodeTestGrammar {
		StartRule = (";" firstRule)+
		firstRule = "a"
		space += comment
		comment = "\"" (~"\"" any)* "\""
	}'.
	result := (grammar match: ';a ; "comment" a' startingFrom: #StartRule) cst.
	
	self assert: ' "comment" ' equals: result children last children last skippedSpacesString.