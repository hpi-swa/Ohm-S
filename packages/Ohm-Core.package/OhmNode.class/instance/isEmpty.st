testing
isEmpty

	^ (self interval length == 0
		or: [ self interval end < 1 ]
		or: [ self interval start > self interval stream contents size ])