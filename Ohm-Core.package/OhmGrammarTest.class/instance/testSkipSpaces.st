as yet unclassified
testSkipSpaces
	
	| testInput state |
	  
	{' ' . '  ' . '',Character cr . Character tab asString } do: [ :fixtureString |
		testInput := OhmInputStream on: fixtureString.
		state := OhmParsingState new.
		state pushInput: testInput.
		self fixtureGrammar skipSpaces: state.
		self assert: testInput atEnd]
	
	