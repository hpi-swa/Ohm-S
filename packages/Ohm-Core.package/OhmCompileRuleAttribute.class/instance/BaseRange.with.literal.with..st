actions
BaseRange: node with: start literal: x with: end

	| endChar startChar |
	startChar := start interval contents second.
	endChar := end interval contents second.
	
	^ (self builder rangeFrom: startChar to: endChar)
		textualRepresentation: node interval contents;
		yourself