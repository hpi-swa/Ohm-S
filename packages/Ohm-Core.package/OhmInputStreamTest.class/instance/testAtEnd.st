tests
testAtEnd

	| testStream |
	testStream := OhmInputStream on: 'x'.
	self deny: testStream atEnd.
      testStream next.
      self assert: testStream atEnd.

	self assert: self fixtureStream next 
             equals: (self fixtureString at: 1).