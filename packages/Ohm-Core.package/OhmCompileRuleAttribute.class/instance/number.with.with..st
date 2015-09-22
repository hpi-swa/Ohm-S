actions
number: aNode with: x with: xx

	^ (self builder prim: aNode interval contents asNumber)
		textualRepresentation: aNode interval contents;
		yourself