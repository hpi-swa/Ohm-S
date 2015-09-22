as yet unclassified
makeAndInstallGrammar: grammarDefinition in: nameSpaceName

	SystemChangeNotifier uniqueInstance doSilently: [
	nameSpaceName 
		ifNotNil: [ ^ OhmGrammar makeAndInstallGrammar: grammarDefinition in: nameSpaceName ]
		ifNil: [ ^ self makeGrammar: grammarDefinition ]].