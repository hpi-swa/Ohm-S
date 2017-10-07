accessing
OhmInstance

	"Same lazy loading procedure as for normal grammars but with different call."

	^ OhmInstance 
		ifNil: [ 
			isLoading ifNil: [isLoading := false].
			isLoading 
					ifFalse: [
						isLoading := true.
					 	[self bootstrapTheOhmGrammar] 
							ensure: [isLoading := false].
					 	OhmInstance]
					ifTrue: [ self bootstrapOhmGrammar ]]