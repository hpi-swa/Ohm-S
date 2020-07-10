running
setUp

	grammar := OhmGrammar new: 'OhmNodeTestGrammar {
		StartRule = firstRule secondRule lastRule
		firstRule = "a"
		secondRule = "b"
		lastRule = "c"
	}'