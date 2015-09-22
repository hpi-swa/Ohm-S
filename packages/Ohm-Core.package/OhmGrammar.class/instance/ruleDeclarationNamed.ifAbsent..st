accessing
ruleDeclarationNamed: ruleName ifAbsent: aBlock

	^ self ruleDeclarations at: ruleName ifAbsent: aBlock