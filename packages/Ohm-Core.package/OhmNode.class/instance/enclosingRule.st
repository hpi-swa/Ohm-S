treeNavigation
enclosingRule

	| aParent |
	aParent := self parent.
	[aParent ruleName = OhmParsingExpression listRuleIdentifier] whileTrue: [
		aParent := aParent parent].
	^ aParent