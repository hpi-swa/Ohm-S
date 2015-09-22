as yet unclassified
makeGrammar: grammarDefinition in: nameSpaceName

	nameSpaceName 
		ifNotNil: [ ^ OhmGrammar makeAndInstallGrammar: grammarDefinition in: nameSpaceName ]
		ifNil: [ ^ self makeGrammar: grammarDefinition ].