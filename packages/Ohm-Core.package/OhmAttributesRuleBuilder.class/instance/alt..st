build-instructions
alt: pexprs

	| terms |
	
	terms := pexprs collect: [ :p | 
		p class = OhmPExprAlt
			ifTrue: [p terms]
			ifFalse: [p]].

	terms := terms gather: [:e | e isCollection ifFalse: [{ e }] ifTrue: [e]].

	^ OhmPExprAlt newOn: terms