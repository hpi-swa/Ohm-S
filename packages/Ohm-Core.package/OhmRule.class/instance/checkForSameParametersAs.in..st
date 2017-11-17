checking
checkForSameParametersAs: superRule in: aGrammar
	
	superRule parameters size = self parameters size
		ifFalse: [OhmIncompatibleNumberOfParameters
					signalForRule: self
					inGrammar: aGrammar]