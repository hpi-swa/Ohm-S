accessing
assertChoicesHaveUniformArity: ruleName

	self properties associationsDo: [ :assoc |
		assoc value assertChoicesHaveUniformArity: ruleName ]