node-assertions
assertNodeTreeOf: result equals: expectedTree

	result class = OhmNode
		ifTrue: [ self assert: expectedTree ruleName equals: result ruleName.

				(expectedTree children)
					ifNotNil: [	self assert: expectedTree children size equals: result children size.
								result children withIndexDo: [ :child :index |
									self assertNodeTreeOf: child equals: (expectedTree children at: index). ] ] ]
		ifFalse: [ result class = Character 
					ifTrue: [ self assert: expectedTree asString equals: result asString ]
					ifFalse: [ self assert: expectedTree equals: result. ] ]