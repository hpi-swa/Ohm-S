evaluation
matchInput: anInput

	| char |
	char := anInput next.
	^ (char isCharacter and: [self startCharacter <= char] and: [char <= self endCharacter])
		ifTrue: [char]
		ifFalse: [#ohmFail]