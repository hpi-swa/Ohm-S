as yet unclassified
matchInput: anInput

	| char |
	char := anInput next.
	^ (self startCharacter <= char and: [char <= self endCharacter])
		ifTrue: [char]
		ifFalse: [#ohmFail]