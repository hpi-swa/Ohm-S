initialize-release
initialize

	self memoizedResults: Dictionary new.
	self activeRules: OrderedCollection new.
	self leftRecursionStack: Stack new.