build-instructions
build

	| inlineRules definition |
	inlineRules := self resultRules select: [:r | r isInlineRule ].
	definition := self resultRules select: [:r | r isInlineRule not].
	self assert: definition size = 1.
	definition first inlineRules: inlineRules.

	^ self resultRules 