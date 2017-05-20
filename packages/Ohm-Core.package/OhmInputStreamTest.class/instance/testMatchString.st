testing
testMatchString

	self assert: (self fixtureStream matchString: 'hal').
	self assert: (self fixtureStream matchString: '').
	self assert: #ohmFail equals: (self fixtureStream matchString: 'xx').
	