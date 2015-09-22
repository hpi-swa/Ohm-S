actions
AltRec: node with: expr1 with: x with: expr2

	^ (self builder alt: { self value: expr1 . self value: expr2 })
		textualRepresentation: node interval contents;
		yourself