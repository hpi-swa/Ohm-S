expressions
prim: primToMatch
	primToMatch isString
		ifTrue: [	((primToMatch beginsWith: '/') and: [primToMatch endsWith: '/'])
					ifTrue: [^ self regex: primToMatch ]
					ifFalse: [^ self string: primToMatch ] ]
		ifFalse: [ ^ OhmPExprPrimObject newOn: primToMatch ]