actions
regExp: node with: x with: expr with: xx

	^ (self builder regex: (self value: expr))
		textualRepresentation: node interval contents;
		yourself