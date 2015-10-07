matching
match: stringOrObject
	
	self defaultStartRuleName ifNil: [ OhmMissingStartRule signal ].
	^ self match: stringOrObject startingFrom: self defaultStartRuleName