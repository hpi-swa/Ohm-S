accessing
OhmInstance

	^ OhmInstance ifNil: [ self initializeBaseBuiltInGrammar. OhmInstance ]