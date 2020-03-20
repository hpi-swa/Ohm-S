asserting
assert: result MatchedWithContent: stringContent andRuleName: ruleName

	self assert: result ~= false.
	self 
		assert: result interval contents 
		equals: stringContent.
	self 
		assert: result ruleName 
		equals: ruleName.