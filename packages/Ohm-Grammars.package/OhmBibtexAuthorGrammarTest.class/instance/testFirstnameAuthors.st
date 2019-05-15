tests
testFirstnameAuthors

	startRule := #Authors.
	self
		shouldParseAll: { 'Alan C. Kay and Ted Teddy T. Nelson' }