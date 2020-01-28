initialize-release
initialize

	self memoizedResults: IdentityDictionary new.
	self activeRules: OrderedCollection new.
	self leftRecursionStack: Stack new.