tests
testAComment
	
	startRule := #Comment.
	self 
		shouldParseAll:	{'a comment' . '-> another comment' . 'several comments
in several lines' };
		shouldntParseAny: {'@preamble' . '@article' }.