printing
printOn: aStream

	| aName |
	super printOn: aStream.
	aName := self grammarName ifNil: ['unnamed'].
	aStream 
		<< ': '
		<< aName