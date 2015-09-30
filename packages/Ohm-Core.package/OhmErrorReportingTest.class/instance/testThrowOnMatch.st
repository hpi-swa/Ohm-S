as yet unclassified
testThrowOnMatch

	| g matching |
	g := OhmGrammar new: 'G { start = 5 }'.

	matching := [ g match: 42 startingFrom: 'start' failureAsException: true ].

	self should: matching raise: OhmMatchFailure.

	matching 
		on: OhmMatchFailure
		do: [ :e | self assert: e message equals: 'match failed at position 0'.
				self assert: e position equals: 0. ]