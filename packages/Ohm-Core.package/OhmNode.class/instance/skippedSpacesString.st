accessing
skippedSpacesString
	"This is calculated on demand as most semantics don't need it.
	This is work in progress!"
	
	| leftSibling spacesInterval |
	leftSibling := self nextParentWithChildFurtherLeft children before: self.
	spacesInterval := leftSibling interval end + 1 to: self interval start - 1.

	"The following is a hack as we should not access the stream"
	^ self interval stream contents 
		copyFrom: spacesInterval start
		to: spacesInterval stop