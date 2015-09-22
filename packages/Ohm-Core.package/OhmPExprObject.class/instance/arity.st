accessing
arity

	^ 
	(self matchMode = #lenient ifTrue: [ 1 ] ifFalse: [ 0 ])
	+
	((self properties values collect: [ :term | term arity ])
		ifEmpty: [ 0 ] 
		ifNotEmptyDo: [:arities | arities sum ])