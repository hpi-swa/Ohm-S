treeNavigation
nextParentWithChildFurtherLeftThan: aChildNode

	"TODO: Deal with root node"
	^ (self children indexOf: aChildNode) > 1 
		ifTrue: [self]
		ifFalse: [self parent nextParentWithChildFurtherLeftThan: self]