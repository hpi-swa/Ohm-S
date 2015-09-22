as yet unclassified
testOnGrammar: grammarDescription in: packageName throws: errorType andShould: blockWithAssertions

	SystemChangeNotifier uniqueInstance doSilently: [ | signal |
		signal := false.
		[ OhmGrammar makeAndInstallGrammars: grammarDescription in: packageName ] 
			on: errorType
			do: [:e | signal := true. blockWithAssertions value: e ].
		self assert: signal equals: true ].

