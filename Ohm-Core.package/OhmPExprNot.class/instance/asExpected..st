accessing
asExpected: rulesDict

	self term class = OhmPExprAnything 
		ifTrue: [ ^ 'anything' ].

	^ 'not ' , (self term asExpected: rulesDict)