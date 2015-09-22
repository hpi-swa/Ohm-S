accessing
grammars

	^ (self classes 
			select: [:c | c superclass == OhmGrammarSmalltalkProxy ])
			collect: [:c | c OhmInstance ]
			thenSelect: [:c | c notNil]