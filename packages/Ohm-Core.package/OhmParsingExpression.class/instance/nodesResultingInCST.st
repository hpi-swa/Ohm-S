private
nodesResultingInCST
	"This method only returns these rules in the rule tree
	which will create nodes in the CST. So an alt rule will
	only return itself, because it will only build one node.
	A sequence in contrast will return all its children as they 
	all contribute."

	self subclassResponsibility 