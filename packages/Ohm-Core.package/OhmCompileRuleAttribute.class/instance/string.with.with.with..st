actions
string: node with: x with: cs with: xx

	| s reader writer char |
	s := ((self value: cs) inject: '' into: [:result :new | result , new ]).

	reader := s readStream.
	writer := '' writeStream.
	[reader atEnd]
		whileFalse: [char := reader next.
			(char = $\
					and: [reader atEnd not])
				ifTrue: [char := reader next.
					char caseOf: {
						[$n] -> [writer nextPut: Character cr].
						[$t] -> [writer nextPut: Character tab].
						[$"] -> [writer nextPut: $"].
						[$'] -> [writer nextPut: $'].
						[$\] -> [writer nextPut: $\]}
						 otherwise: [writer nextPutAll: {$\. char}]]
				ifFalse: [writer nextPut: char]].
	s := writer contents.
	^ (self builder string: s)
		textualRepresentation: node interval contents;
		yourself