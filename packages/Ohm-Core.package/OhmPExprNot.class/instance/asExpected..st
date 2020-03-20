accessing
asExpected: rulesDict

	((self term class = OhmPExprApply) and: [self term ruleName = #any]) 
		ifTrue: [ ^ 'end of input' ].

	^ 'not ' , (self term asExpected: rulesDict)