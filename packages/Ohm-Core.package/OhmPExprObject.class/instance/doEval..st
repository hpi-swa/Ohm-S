accessing
doEval: state

	| token newInput matched matchedProperties success tempBindings excessProperties originalInputState propertyKeys input bindings |
	input := state inputStream.
	bindings := state bindings.
	originalInputState := input getState.
	token := input next.
	
	token isDictionary
		ifFalse: [ ^ false ].

	tempBindings := OrderedCollection new.
	state pushBindings: tempBindings.  
	matchedProperties := self properties select: [ :assoc |
		newInput := OhmInputStream on: { token at: assoc key }.
		state pushInput: newInput.
		matched := assoc value eval: state.
		state popInput.
		matched and: [newInput atEnd]. ].
	state popBindings.

	(self matchMode = #strict)
		ifTrue: [	success := (matchedProperties size = self properties size) and: [token associations size = self properties size] ]
		ifFalse: [success := (matchedProperties size = self properties size) and: [token associations size >= self properties size]].

	success
		ifTrue: [ bindings addAll: tempBindings.
				 (self matchMode = #lenient)
					ifTrue: [ 
							propertyKeys := matchedProperties collect: [ :prop | prop key ].
							excessProperties := Dictionary newFrom: 
								(token associationsSelect: [ :assoc | (propertyKeys includes: assoc key) not ]).
							state addNodeNamed: self class terminalRuleIdentifier 
									startedAt: originalInputState 
									withChildren: { excessProperties }. ] ].
	

	^ success