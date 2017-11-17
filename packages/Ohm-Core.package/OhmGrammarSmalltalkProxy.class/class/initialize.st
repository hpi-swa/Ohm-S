class initialization
initialize

	(self == OhmGrammarSmalltalkProxy) ifTrue: [
		OhmBaseGrammar recompile.
		OhmBuiltInRules recompile.
		OhmGrammarOfOhm recompile.
		
		(self allSubclasses copyWithout: {OhmBaseGrammar . OhmBuiltInRules . OhmGrammarOfOhm})
			do: [:grammar | grammar recompile]]