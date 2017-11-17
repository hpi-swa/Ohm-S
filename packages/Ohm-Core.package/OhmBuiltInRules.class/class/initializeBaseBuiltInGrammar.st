boostrapping
initializeBaseBuiltInGrammar

	"Placeholder instance"
	OhmInstance := OhmGrammar basicNew.
	OhmInstance := self bootstrapBuiltInGrammar.
	OhmInstance superGrammar: OhmBaseGrammar OhmInstance.
	