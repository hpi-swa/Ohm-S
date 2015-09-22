build-instructions
seq: pexprs

	| terms |
	
	terms := pexprs collect: [ :p | 
		p class = OhmPExprSeq
			ifTrue: [p terms]
			ifFalse: [p]].

	terms := terms gather: [:e | e isCollection ifFalse: [{ e }] ifTrue: [e]].

	^ OhmPExprSeq newOn: terms