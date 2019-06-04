accessing
cachedSpacesRule
	"This is only an optimization to improve the performance of skipping spaces
	by avoiding repeated lookups of the space rule."
	
	^ cachedSpacesRule ifNil: [cachedSpacesRule := self grammar ruleNamed: #space]