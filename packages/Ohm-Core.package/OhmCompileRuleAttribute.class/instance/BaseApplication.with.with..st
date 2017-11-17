actions
BaseApplication: node with: name with: arguments 

	^ (self builder apply: (self value: name) withArguments: (self value: arguments))
		textualRepresentation: node interval contents;
		yourself