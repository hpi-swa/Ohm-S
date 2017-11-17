evaluation
matchInput: anInput

	| matchResult |

	matchResult := anInput matchCaseInsensitiveString: self matchString.
	matchResult == #ohmFail
		ifFalse: [ ^ self matchString ].
	^ #ohmFail