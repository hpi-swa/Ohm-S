as yet unclassified
testNumbers
	
	startRule := #AddExpr.

	self 
		shouldParseAll: #('23' '-12' '+1');
		shouldntParseAny: { 'a' }.