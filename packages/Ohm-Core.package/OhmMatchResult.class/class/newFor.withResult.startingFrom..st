as yet unclassified
newFor: aParsingState withResult: result startingFrom: startRuleName
	| setParents |
	^ result
		ifFalse: [ 
			| failure |
			failure := OhmMatchFailure new
				state: aParsingState;
				startRuleName: startRuleName.
			(OhmFailedMatchResult new: aParsingState)
				failure: failure;
				yourself  ]
		ifTrue: [ 
			setParents := aParsingState grammar semanticAction: OhmSetParentAttribute new.
			setParents value: aParsingState bindings first.
			OhmMatchResult new: aParsingState ]