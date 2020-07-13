accessing
sourceMap
	"The sourceMap is only held by the root node"
	^ self isRootNode 
		ifTrue: [sourceMap ifNil: [sourceMap := self calculateSourceMap]]
		ifFalse: [self rootNode sourceMap]
	