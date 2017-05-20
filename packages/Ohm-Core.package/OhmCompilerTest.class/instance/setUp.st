running
setUp

	testGrammar := OhmGrammar new.
	testGrammar ruleDeclarations: Dictionary new.
	
	OhmNamespace named: 'OhmTestingPackage'