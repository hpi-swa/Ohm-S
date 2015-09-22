accessing
ruleNamed: ruleName

	^ (self ruleDeclarationNamed: ruleName lookUpFor: self) dispatchedBodyOn: self