as yet unclassified
testBasicParanthesis
	
	startRule := #AddExpr.

	self shouldParseAll: 
		#('(23 + 12)' '12 + (3 + 4)').
	