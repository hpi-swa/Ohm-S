memoization
set: value

	(self memoization includesKey: self topChild)
		ifTrue: [ Error signal: 'Attribute can only be written once' ].

	self memoization at: self topChild put: value.