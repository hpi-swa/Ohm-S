matching
matchString: aString

	aString do: [ :aCharacter |
		| matches |
		matches := self matchExactly: aCharacter.
		matches == #ohmFail
			ifTrue: [ ^ #ohmFail ] ].
		
	^ true