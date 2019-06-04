tests
testSkipSpaces
	| testInput state |
	  
	{' ' . '  ' . '',Character cr . Character tab asString } do: [ :fixtureString |
		testInput := OhmInputStream on: fixtureString.
		state := OhmParsingState new.
		state pushInput: testInput.
		state grammar: self fixtureGrammar.
		self fixtureGrammar skipSpaces: state.
		self assert: testInput atEnd]