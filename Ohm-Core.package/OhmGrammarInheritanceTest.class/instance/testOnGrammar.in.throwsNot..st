as yet unclassified
testOnGrammar: grammarDescription in: nameSpaceName throwsNot: errorType

	SystemChangeNotifier uniqueInstance doSilently: [
	self
		shouldnt: [ OhmGrammar makeAndInstallGrammars: grammarDescription in: nameSpaceName ]
		raise: errorType]