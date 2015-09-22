instance creation
newNamed: ruleName body: b

	| newDeclaration |
	newDeclaration := self new
		ruleName: ruleName;
		body: b.

	^ newDeclaration