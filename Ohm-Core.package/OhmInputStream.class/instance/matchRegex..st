matching
matchRegex: regex

	| token |
	token := self next asString.
	^ (regex matches: token)
		ifFalse: [ #ohmFail ]
		ifTrue: [ token ]