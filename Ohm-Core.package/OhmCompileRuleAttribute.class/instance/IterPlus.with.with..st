actions
IterPlus: node with: expr with: x

	^ (self builder plus: (self value: expr))
		textualRepresentation: node interval contents;
		yourself