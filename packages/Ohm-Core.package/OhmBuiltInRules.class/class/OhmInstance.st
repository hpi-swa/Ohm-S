accessing
OhmInstance

	^ OhmInstance ifNil: [ self initializeBaseGrammar. OhmInstance ]