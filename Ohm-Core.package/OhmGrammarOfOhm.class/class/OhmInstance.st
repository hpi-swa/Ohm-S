as yet unclassified
OhmInstance

	^ OhmInstance ifNil: [ self bootstrapTheOhmGrammar. OhmInstance ]