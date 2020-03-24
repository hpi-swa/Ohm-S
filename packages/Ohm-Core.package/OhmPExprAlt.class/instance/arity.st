accessing
arity

	^ self terms
		ifEmpty: [0]
		ifNotEmptyDo: [:terms | terms first arity] 