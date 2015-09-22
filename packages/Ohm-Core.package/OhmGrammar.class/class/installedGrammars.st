instance creation
installedGrammars

	^ OhmGrammarSmalltalkProxy allSubclasses
			collect: [:c | c OhmInstance ]
			thenSelect: [:c | c notNil]