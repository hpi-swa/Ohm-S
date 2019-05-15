tests
testMatchRegex

	self fixtureString: '1a'.
	self fixtureStream: (OhmInputStream on: self fixtureString).
	self assert: (self fixtureStream matchRegex: (RxParser preferredMatcherClass for: (RxParser new parse: '[0-9]')) ) ~= #ohmFail.
	self assert: (self fixtureStream matchRegex: (RxParser preferredMatcherClass for: (RxParser new parse: '[a-z]'))) ~= #ohmFail.