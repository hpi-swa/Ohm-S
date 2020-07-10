accessing
skippedSpacesNodes
	"This is calculated on demand as most semantics don't need it.
	This is work in progress!"
	
	^ (self grammar match: self skippedSpacesString startingFrom: #spaces) cst.