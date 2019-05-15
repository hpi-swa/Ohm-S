tests
testBalanced
	
	startRule := #piece.
	self 
		shouldParseAll: #('{a{b}c}' '"x{y}z"')