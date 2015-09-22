accessing
assertChoicesHaveUniformArity: ruleName

	self terms do: [ :t | t assertChoicesHaveUniformArity: ruleName ]