treeNavigation
enclosingRule

	| aParent |
	aParent := self parent.
	aParent ifNil: [ ^ self ].
	[aParent ruleName = OhmParsingExpression listRuleIdentifier] whileTrue: [
		aParent := aParent parent].
	^ aParent