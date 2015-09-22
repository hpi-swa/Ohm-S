actions
PredNot: node with: x with: expr

	^ (self builder not: (self value: expr))
		textualRepresentation: node interval contents;
		yourself