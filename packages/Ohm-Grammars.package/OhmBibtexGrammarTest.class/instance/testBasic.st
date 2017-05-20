testing
testBasic
	
	startRule := #BibtexDB.
	self 
		shouldParse: '@misc{x, title="title", author={author}}
@misc{y, title=123,}'