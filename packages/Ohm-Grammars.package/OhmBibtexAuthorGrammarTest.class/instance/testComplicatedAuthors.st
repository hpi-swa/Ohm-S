testing
testComplicatedAuthors
	
	startRule := #Authors.
	self 
		shouldParse: 'Astudillo R., Hern\"{a}n';
		shouldParse: 'Astudillo R., Hern{\"a}n'.