as yet unclassified
newFor: aParsingState

	^ aParsingState bindingsStack
		ifEmpty: [ OhmFailedMatchResult new: aParsingState ]
		ifNotEmpty: [ OhmMatchResult new: aParsingState ]