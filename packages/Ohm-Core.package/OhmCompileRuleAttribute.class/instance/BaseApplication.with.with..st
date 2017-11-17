actions
BaseApplication: node with: name with: arguments 

	| argumentList |
	argumentList := (self value: arguments) ifNil: [#()].
	^ (self builder apply: (self value: name) withArguments: argumentList)
		textualRepresentation: node interval contents;
		yourself