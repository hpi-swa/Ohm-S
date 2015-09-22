expressions
prim: primToMatch

	primToMatch isString
		ifTrue: [	((primToMatch startsWith: '/') and: [primToMatch endsWith: '/'])
					ifTrue: [^ self regex: primToMatch ]
					ifFalse: [^ self string: primToMatch ] ]
		ifFalse: [ ^ OhmPExprPrimObject newOn: primToMatch ]