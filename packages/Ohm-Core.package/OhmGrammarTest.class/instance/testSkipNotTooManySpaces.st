tests
testSkipNotTooManySpaces
	
	| state testInput |
	
	testInput := OhmInputStream on: ' a '.
	state := OhmParsingState new.
	state pushInput: testInput.  
	self fixtureGrammar skipSpaces: state.
	self assert: 1 equals: testInput getState.
	
	