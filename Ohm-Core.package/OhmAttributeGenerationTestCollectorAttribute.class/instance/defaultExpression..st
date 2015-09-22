accessing
defaultExpression: aNode

	| depths |
	depths := (aNode children gather: [:e | |r| r := (self value: e). r isCollection ifFalse: [{ r }] ifTrue: [ r ]]) asOrderedCollection .
	depths add: (aNode ruleName => (self depth value: aNode)).
	^ depths