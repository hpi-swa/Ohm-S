attributes
assertAritiesMatch: actionClass

	| message ruleMessageName messages arguments wrongActions |
	messages := actionClass allSelectorsBelow: OhmAttributes.

	wrongActions := self rules associationsDo: [ :assoc | 
		ruleMessageName := OhmAttributes ruleNameToMessageName: assoc key.
		message :=  messages detect: [:msg | msg beginsWith: ruleMessageName] ifNone: [ nil ].
		message
			ifNil: [ true ]
			ifNotNil: [ arguments := (message count: [:c | c = $:]) - 1.
					  arguments = assoc value arity
						ifFalse: [ ^ OhmAttributeAritiesMissmatchError 
									signalForRule: assoc key
									andMessage: message  ] ] ].