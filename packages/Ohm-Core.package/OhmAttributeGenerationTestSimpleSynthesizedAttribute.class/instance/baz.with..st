as yet unclassified
baz: aNode with: e

	| c |
	c := self counter.
	self counter: c + 1.

	^ c