accessing
errorInfo

	| lineNumber source columnNumber line originalSource |
	originalSource := state inputStream asString.
	source := (self position = originalSource size
		ifTrue: [ originalSource ]
		ifFalse: [ originalSource copyFrom: 1 to: self position ]).
	lineNumber := source lineCount.
	columnNumber := 0.
	line := ''.
	lineNumber > 0
		ifTrue: [columnNumber := (source lineNumber: lineNumber) size + 1.
	                 line := originalSource lineNumber: lineNumber].
	

	^ OhmMatchFailureInfo new
		line: line;
		columnNumber: columnNumber;
		lineNumber: lineNumber;
		yourself