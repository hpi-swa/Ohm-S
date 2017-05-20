instance creation
new: aParsingState

	| r |
	r := self new.
	r state: aParsingState.
	^ r