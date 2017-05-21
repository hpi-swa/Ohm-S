class initialization
initialize

	(self == OhmGrammarSmalltalkProxy) ifTrue: [
		self allSubclassesDo: [:grammar |
			grammar recompile]]