actions
BaseApplication: node with: name with: params 

	^ (self builder apply: (self value: name))
		textualRepresentation: node interval contents;
		yourself