evaluation
matchInput: input

	(input next == self primitiveObject)
		ifFalse: [ ^#ohmFail ].

	^ self primitiveObject