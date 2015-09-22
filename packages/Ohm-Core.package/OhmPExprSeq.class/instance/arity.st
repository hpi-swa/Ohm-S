accessing
arity

	^ (terms collect: [ :term | term arity])
		ifEmpty: [ 0] 
		ifNotEmptyDo: [ :arities | arities sum ]