matching
matchExactly: token

	^ self next = token
		ifFalse: [ #ohmFail ]
		ifTrue: [ true ]