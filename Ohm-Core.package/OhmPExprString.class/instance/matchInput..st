accessing
matchInput: anInput

	| matchResult |

	matchResult := anInput matchString: self matchString.
	matchResult == #ohmFail
		ifFalse: [ ^ self matchString ].
	^ #ohmFail