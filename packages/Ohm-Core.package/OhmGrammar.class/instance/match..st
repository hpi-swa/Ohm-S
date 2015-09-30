matching
match: stringOrObject
	
	self defaultStartRuleName ifNil: [ OhmMissingStartRule signal ].
	^ self matchContents: stringOrObject startingFrom: self defaultStartRuleName