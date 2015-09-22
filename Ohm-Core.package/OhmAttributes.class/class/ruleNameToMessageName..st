converting
ruleNameToMessageName: ruleName

	| name nameParts |
	nameParts := (ruleName subStrings: '_') asOrderedCollection.
	nameParts ifEmpty: [ ^ 'anything:' asSymbol ].
		
	name := nameParts removeFirst.
	nameParts 
		ifNotEmpty:[ name := name , 
								(nameParts inject: '' 
									into: [ :result :new | result , new capitalized ])].
	^ (name , ':') asSymbol