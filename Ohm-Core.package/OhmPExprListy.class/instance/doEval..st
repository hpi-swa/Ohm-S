accessing
doEval: state

	| nextToken newInput result |

	nextToken := state inputStream next.
	nextToken isOhmListy
		ifFalse: [ ^ false ].
	newInput := OhmInputStream on: nextToken.
	state pushInput: newInput.
	result := self body eval: state.
	state popInput.

	^ newInput atEnd and: result