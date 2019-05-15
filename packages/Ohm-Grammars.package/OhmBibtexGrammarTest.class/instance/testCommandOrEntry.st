tests
testCommandOrEntry
	
	startRule := #CommandOrEntry.
	self 
		shouldParseAll:	{'@article { }' . '@preamble { }' . '@string{}' . '@comment' . '@ article {}'};
		shouldntParseAny: {'arctile' . 'preamble' . 'string' . 'comment' }.