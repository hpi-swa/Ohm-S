tests
testMatchExactly

	self assert: (self fixtureStream matchExactly: $h).
	self assert: #ohmFail equals: (self fixtureStream matchExactly: $u).