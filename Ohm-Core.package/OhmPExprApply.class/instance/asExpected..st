accessing
asExpected: rulesDict

	| article rule |
	rule := rulesDict at: self ruleName.

	rule description
		ifEmpty: [ article := self ruleName first isVowel
								ifTrue: [ 'an' ]
								ifFalse: ['a' ].
					^ article , ' ' , self ruleName ]
		ifNotEmptyDo: [ :d | ^ d].