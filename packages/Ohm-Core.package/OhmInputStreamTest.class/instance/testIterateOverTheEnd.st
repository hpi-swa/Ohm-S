testing
testIterateOverTheEnd

	| testStream |
	testStream := OhmInputStream on: 'x'.
      testStream next.
	self assert: #ohmFail equals: testStream next.
