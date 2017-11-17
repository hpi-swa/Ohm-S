boostrapping
initializeBaseBuiltInGrammar

	OhmInstance := self bootstrapBuiltInGrammar.
	OhmInstance superGrammar: OhmBaseGrammar OhmInstance.
	