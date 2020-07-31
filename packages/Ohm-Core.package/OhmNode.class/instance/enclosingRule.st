treeNavigation
enclosingRule

	| aParent |
	self isRootNode ifTrue: [^ self].
	aParent := self parent.
	[aParent ruleName = OhmParsingExpression listRuleIdentifier] whileTrue: [
		aParent := aParent parent].
	^ aParent