as yet unclassified
testBasicAddition
	
	startRule := #AddExpr.

	self shouldParse: '23 + 123'
		to: #(AddExpr #(#'AddExpr_plus'
				#(AddExpr '23')
				#(AddExpr '123') ))