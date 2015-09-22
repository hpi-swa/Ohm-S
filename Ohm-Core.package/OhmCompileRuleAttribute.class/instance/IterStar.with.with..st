actions
IterStar: node with: expr with: x

	^ (self builder star: (self value: expr))
		textualRepresentation: node interval contents;
		yourself