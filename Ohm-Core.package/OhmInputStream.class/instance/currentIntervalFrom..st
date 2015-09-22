accessing
currentIntervalFrom: start

	| currentPosition end |
	currentPosition := self contentStream position.
	(currentPosition = 0) ifTrue: [ ^ OhmInterval newOn: self from: 0 to: 0 ].
	end := (self atEnd and: [currentPosition = start]) ifTrue: [ currentPosition + 1] ifFalse: [currentPosition].

	^ OhmInterval
		newOn: self 
		from: start + 1
		to: end