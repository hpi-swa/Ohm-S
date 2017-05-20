accessing
OhmInstance

	^ OhmInstance ifNil: [ self bootstrapTheOhmGrammar. OhmInstance ]