accessing
initialize
	
	super initialize.
	self childStack: OrderedCollection new.
	self memoization: IdentityDictionary new.