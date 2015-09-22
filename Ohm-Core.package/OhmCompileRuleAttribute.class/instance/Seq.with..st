actions
Seq: node with: expr
	
	^ (self builder seq: (self value: expr))
		textualRepresentation: node interval contents;
		yourself