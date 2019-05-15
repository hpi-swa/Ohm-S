tests
testOnGrammar: grammarDescription in: packageName throwsNot: errorType

	SystemChangeNotifier uniqueInstance doSilently: [
	self
		shouldnt: [ OhmGrammar makeAndInstallGrammars: grammarDescription in: packageName ]
		raise: errorType]