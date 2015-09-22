failure recording
recordFailureOf: pexpr at: position

	position < self rightmostFailure position
		ifTrue: [ ^ self ].

	position > self rightmostFailure position
		ifTrue: [ self rightmostFailure 
					position: position;
					expressions: OrderedCollection new ].

	self rightmostFailure expressions add: pexpr.