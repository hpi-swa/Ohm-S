standard attributes
defaultExpression: aNode

	| tempStructure nonPrimitiveChildren|
	
	"Check for a value"
	(self structure size = 2 and: [self structure second isString])
		ifTrue: [ ^ aNode interval contents = self structure second].

	nonPrimitiveChildren := aNode children reject: [:n | n ruleName = OhmParsingExpression terminalRuleIdentifier].
	"Check whether substructure can be valid at all"
	((aNode ruleName = self structure first) and: [nonPrimitiveChildren size = (self structure size - 1)])
		ifFalse: [^ false].

	^ (1 to: nonPrimitiveChildren size)
		inject: true
		into: [ :matches :index | |result|
				tempStructure := self structure.
				self structure: (tempStructure at: index + 1).
				result := self value: (nonPrimitiveChildren at: index).
				self structure: tempStructure.
				matches and: result ].
	