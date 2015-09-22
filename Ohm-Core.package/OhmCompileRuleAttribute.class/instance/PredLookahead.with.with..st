actions
PredLookahead: node with: x with: expr

	^ (self builder lookahead: (self value: expr))
		textualRepresentation: node interval contents;
		yourself