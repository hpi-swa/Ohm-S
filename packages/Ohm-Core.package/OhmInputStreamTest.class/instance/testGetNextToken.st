testing
testGetNextToken

	self assert: self fixtureStream next 
             equals: (self fixtureString at: 1).
	self assert: self fixtureStream next 
             equals: (self fixtureString at: 2).