instance creation
newFor: aParsingState
	| setParents |
	^ (aParsingState bindingsStack isEmpty or: [aParsingState bindings isEmpty])
		ifTrue: [ OhmFailedMatchResult new: aParsingState ]
		ifFalse: [ 
			setParents := aParsingState grammar semanticAction: OhmSetParentAttribute new.
			setParents value: aParsingState bindings first.
			OhmMatchResult new: aParsingState ]