actions
IterOpt: node with: expr with: symbol

	^ (self builder opt: (self value: expr))
		textualRepresentation: node interval contents;
		yourself