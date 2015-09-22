actions
BaseApplication: node with: name

	^ (self builder apply: (self value: name))
		textualRepresentation: node interval contents;
		yourself